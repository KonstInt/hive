import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/course_test_model.dart';

class CourseTestsRepository {
  final FirebaseFirestore _firestore;

  CourseTestsRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<List<CourseTestModel>> getTests({
    required String courseId,
    required String userId,
    required int page,
    required int limit,
  }) async {
    final testsQuery = await _firestore
        .collection('tests')
        .doc(courseId)
        .collection('test_list')
        .orderBy('id')
        .limit(limit)
        .startAfter([(page - 1) * limit]).get();

    final testDocs = testsQuery.docs;
    final testIds = testDocs.map((doc) => doc.id).toList();

    final testMetaDocs = await Future.wait(
      testIds.map(
        (testId) => _firestore
            .collection('users')
            .doc(userId)
            .collection('test_meta')
            .doc(courseId)
            .collection('tests')
            .doc(testId)
            .get(),
      ),
    );

    return List.generate(
      testDocs.length,
      (index) {
        final testData = testDocs[index].data();
        final testMetaData = testMetaDocs[index].data() ??
            {
              'task_completed': 0,
              'progress_percentage': 0.0,
              'test_state': 'not_started',
            };

        return CourseTestModel(
          id: testDocs[index].id,
          description: testData['description'] as String,
          taskCount: testData['task_count'] as int,
          imageUrl: testData['image_url'] as String?,
          taskCompleted: (testMetaData['task_completed'] as int?) ?? 0,
          progressPercentage:
              (testMetaData['progress_percentage'] as double?) ?? 0.0,
          testState: _parseTestState(
            (testMetaData['test_state'] as String?) ?? 'not_started',
          ),
        );
      },
    );
  }

  TestState _parseTestState(String state) {
    switch (state) {
      case 'not_started':
        return TestState.notStarted;
      case 'in_progress':
        return TestState.inProgress;
      case 'completed':
        return TestState.completed;
      default:
        return TestState.notStarted;
    }
  }
}

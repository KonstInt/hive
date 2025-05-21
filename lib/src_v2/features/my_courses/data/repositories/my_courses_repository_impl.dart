import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/course_model.dart';
import '../../domain/repositories/my_courses_repository.dart';

class MyCoursesRepositoryImpl implements MyCoursesRepository {
  final FirebaseFirestore _firestore;

  MyCoursesRepositoryImpl({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<CourseModel>> getUserCourses(String userId) async {
    try {
      // Get user's course list
      final userCoursesDoc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('course_list')
          .doc('courses')
          .get();

      if (!userCoursesDoc.exists) {
        return [];
      }

      final List<String> courseIds =
          List<String>.from(userCoursesDoc.data()?['coursesIds'] ?? []);

      // Get courses and their meta info
      final courses = await Future.wait(
        courseIds.map((courseId) async {
          final courseDoc =
              await _firestore.collection('courses').doc(courseId).get();

          final courseMetaDoc = await _firestore
              .collection('users')
              .doc(userId)
              .collection('course_meta')
              .doc(courseId)
              .get();

          if (!courseDoc.exists || !courseMetaDoc.exists) {
            return null;
          }

          final courseData = courseDoc.data()!;
          final metaData = courseMetaDoc.data()!;

          return CourseModel(
            id: courseId,
            title: courseData['title'] as String,
            tags: List<String>.from(courseData['tags'] ?? []),
            shortDescription: courseData['shortDescription'] as String,
            progressPercentage:
                (metaData['progressPercentage'] as num).toDouble(),
            currentPoints: metaData['currentPoints'] as int,
            maxPoints: courseData['maxPoints'] as int,
          );
        }),
      );

      return courses.whereType<CourseModel>().toList();
    } catch (e) {
      throw Exception('Failed to fetch user courses: $e');
    }
  }
}

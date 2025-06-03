import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/task_model.dart';

class TestSessionRepository {
  final FirebaseFirestore _firestore;

  TestSessionRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<List<TaskModel>> getTasks(String courseId, String testId) async {
    final snapshot = await _firestore
        .collection('tasks')
        .doc(courseId)
        .collection(testId)
        .get();

    return snapshot.docs.map((doc) => TaskModel.fromJson(doc.data())).toList();
  }

  Future<Map<String, dynamic>?> getUserProgress(
    String courseId,
    String testId,
    String userId,
  ) async {
    final doc = await _firestore
        .collection('users')
        .doc(userId)
        .collection('test_meta')
        .doc(courseId)
        .collection('tests')
        .doc(testId)
        .get();

    return doc.data();
  }

  Future<void> saveAnswer(
    String courseId,
    String testId,
    String taskId,
    String userId,
    Map<String, dynamic> answer,
  ) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('test_meta')
        .doc(courseId)
        .collection('tests')
        .doc(testId)
        .collection('answers')
        .doc(taskId)
        .set(answer);
  }

  Future<void> updateProgress(
    String courseId,
    String testId,
    int completedTasks,
    String userId,
    int totalTasks,
  ) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('test_meta')
        .doc(courseId)
        .collection('tests')
        .doc(testId)
        .set(
      {
        'task_completed': completedTasks,
        'progress_percentage': (completedTasks / totalTasks) * 100,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> updateTestState(
    String courseId,
    String testId,
    String userId,
    String state,
  ) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('test_meta')
        .doc(courseId)
        .collection('tests')
        .doc(testId)
        .set({
      'test_state': state,
    }, SetOptions(merge: true));
  }

  Future<List<Map<String, dynamic>>> getAnswers(
    String courseId,
    String testId,
    String userId,
  ) async {
    final snapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('test_meta')
        .doc(courseId)
        .collection('tests')
        .doc(testId)
        .collection('answers')
        .get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> updateCourseProgress(
    String courseId,
    String userId,
    int score,
  ) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('course_meta')
        .doc(courseId)
        .set(
      {
        'current_points': score,
      },
      SetOptions(merge: true),
    );
  }
}

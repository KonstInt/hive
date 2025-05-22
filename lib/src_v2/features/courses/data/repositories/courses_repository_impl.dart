import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/src_v2/features/courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/domain/models/course_meta_info.dart';
import 'package:hive/src_v2/features/courses/domain/repositories/courses_repository.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final FirebaseFirestore _firestore;

  CoursesRepositoryImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  @override
  Future<List<Course>> getCourses(String userId) async {
    final coursesSnapshot = await _firestore.collection('courses').get();
    final userCoursesSnapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('course_list')
        .get();

    final enrolledCourseIds =
        userCoursesSnapshot.docs.map((doc) => doc.id).toSet();

    return coursesSnapshot.docs.map((doc) {
      final data = doc.data();
      return Course(
        id: doc.id,
        title: data['title'] as String,
        tags: List<String>.from(data['tags'] as List),
        shortDescription: data['short_description'] as String,
        maxPoints: data['max_points'] as int,
        testIds: List<String>.from(data['test_ids'] as List),
        isEnrolled: enrolledCourseIds.contains(doc.id),
      );
    }).toList();
  }

  @override
  Future<void> enrollInCourse(String userId, String courseId) async {
    final batch = _firestore.batch();

    // Add course to user's course list
    batch.set(
      _firestore
          .collection('users')
          .doc(userId)
          .collection('course_list')
          .doc(courseId),
      {'enrolled_at': FieldValue.serverTimestamp()},
    );

    // Create course meta info
    batch.set(
      _firestore
          .collection('users')
          .doc(userId)
          .collection('course_meta')
          .doc(courseId),
      {
        'id': courseId,
        'current_points': 0,
        'progress_percentage': 0.0,
      },
    );

    await batch.commit();
  }

  @override
  Future<CourseMetaInfo> getCourseMetaInfo(
      String userId, String courseId) async {
    final doc = await _firestore
        .collection('users')
        .doc(userId)
        .collection('course_meta')
        .doc(courseId)
        .get();

    final data = doc.data()!;
    return CourseMetaInfo(
      id: data['id'] as String,
      currentPoints: data['current_points'] as int,
      progressPercentage: (data['progress_percentage'] as num).toDouble(),
    );
  }
}

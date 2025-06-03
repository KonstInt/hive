import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/full_course_model.dart';

class CourseRepository {
  final FirebaseFirestore _firestore;

  CourseRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<FullCourseModel> getCourse({
    required String userId,
    required String courseId,
  }) async {
    final courseDoc =
        await _firestore.collection('courses').doc(courseId).get();

    if (!courseDoc.exists) {
      throw Exception('Course not found');
    }

    final courseData = courseDoc.data()!;

    final courseMetaDoc = await _firestore
        .collection('users')
        .doc(userId)
        .collection('course_meta')
        .doc(courseId)
        .get();

    final courseMetaData = courseMetaDoc.data();

    return FullCourseModel(
      id: courseId,
      title: courseData['title'] as String,
      tags: List<String>.from(courseData['tags'] as List),
      fullDescription: courseData['full_description'] as String,
      imageUrl: courseData['image_url'] as String?,
      maxPoints: courseData['max_points'] as int,
      currentPoints: (courseMetaData?['current_points'] as num?)?.toInt() ??0,
      progressPercentage: (courseMetaData?['progress_percentage'] as num?)?.toDouble() ?? 0.0,
    );
  }
}

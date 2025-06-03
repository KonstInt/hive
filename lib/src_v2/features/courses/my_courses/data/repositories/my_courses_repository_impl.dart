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
      // Get user's course meta info
      final userCoursesMetaSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('course_meta')
          .get();

      if (userCoursesMetaSnapshot.docs.isEmpty) {
        return [];
      }

      // Get all courses
      final coursesSnapshot = await _firestore.collection('courses').get();

      // Create a map of course meta info for quick lookup
      final courseMetaMap = {
        for (var doc in userCoursesMetaSnapshot.docs) doc.id: doc.data()
      };

      // Map courses with their meta info
      final courses = coursesSnapshot.docs
          .where((courseDoc) => courseMetaMap.containsKey(courseDoc.id))
          .map((courseDoc) {
        final courseData = courseDoc.data();
        final metaData = courseMetaMap[courseDoc.id]!;

        return CourseModel(
          id: courseDoc.id,
          title: courseData['title'] as String,
          tags: List<String>.from(courseData['tags'] ?? []),
          shortDescription: courseData['short_description'] as String,
          progressPercentage:
              (metaData['progress_percentage'] as num).toDouble(),
          currentPoints: (metaData['current_points'] as num).toInt(),
          maxPoints: courseData['max_points'] as int,
          imageUrl: courseData['image_url'] as String?,
        );
      }).toList();

      return courses;
    } catch (e) {
      throw Exception('Failed to fetch user courses: $e');
    }
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/course.dart';
import '../../domain/repositories/courses_repository.dart';
import '../../../../utils/failure.dart';

class CoursesRepositoryImpl implements CoursesRepository {
  final FirebaseFirestore _firestore;

  CoursesRepositoryImpl(this._firestore);

  @override
  Future<Either<Failure, List<Course>>> getAllCourses() async {
    try {
      final coursesSnapshot = await _firestore.collection('courses').get();
      final courses = coursesSnapshot.docs.map((doc) {
        final data = doc.data();
        return Course(
          id: doc.id,
          title: data['title'] as String,
          tags: List<String>.from(data['tags'] as List),
          shortDescription: data['shortDescription'] as String,
          maxPoints: data['maxPoints'] as int,
          testIds: List<String>.from(data['testIds'] as List),
        );
      }).toList();
      return right(courses);
    } catch (e) {
      return left(Failure('Failed to fetch courses: $e'));
    }
  }

  @override
  Future<Either<Failure, Course>> getCourseById(String id) async {
    try {
      final courseDoc = await _firestore.collection('courses').doc(id).get();
      if (!courseDoc.exists) {
        return left(Failure('Course not found'));
      }
      final data = courseDoc.data()!;
      return right(Course(
        id: courseDoc.id,
        title: data['title'] as String,
        tags: List<String>.from(data['tags'] as List),
        shortDescription: data['shortDescription'] as String,
        maxPoints: data['maxPoints'] as int,
        testIds: List<String>.from(data['testIds'] as List),
      ));
    } catch (e) {
      return left(Failure('Failed to fetch course: $e'));
    }
  }
}

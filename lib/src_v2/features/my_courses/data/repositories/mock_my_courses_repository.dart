import '../../domain/models/course_model.dart';
import '../../domain/repositories/my_courses_repository.dart';
import '../mock/mock_data.dart';

class MockMyCoursesRepository implements MyCoursesRepository {
  @override
  Future<List<CourseModel>> getUserCourses(String userId) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    final courseIds =
        List<String>.from(mockUserCourseListJson['coursesIds'] as List);

    return courseIds
        .map((courseId) => CourseModel(
              id: mockCourseJson['id'] as String,
              title: mockCourseJson['title'] as String,
              tags: List<String>.from(mockCourseJson['tags'] as List),
              shortDescription: mockCourseJson['shortDescription'] as String,
              progressPercentage:
                  (mockCourseMetaJson['progressPercentage'] as num).toDouble(),
              currentPoints: mockCourseMetaJson['currentPoints'] as int,
              maxPoints: mockCourseJson['maxPoints'] as int,
            ))
        .toList();
  }
}

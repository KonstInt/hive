part of 'courses_bloc.dart';

sealed class CoursesState {
  const CoursesState();
}

class CoursesInitial extends CoursesState {
  const CoursesInitial();
}

class CoursesLoading extends CoursesState {
  const CoursesLoading();
}

class CoursesError extends CoursesState {
  final String message;

  const CoursesError(this.message);
}

class CoursesData extends CoursesState {
  final List<Course> courses;
  final List<Course> filteredCourses;
  final String? searchQuery;

  const CoursesData({
    required this.courses,
    required this.filteredCourses,
    this.searchQuery,
  });

  CoursesData copyWith({
    List<Course>? courses,
    List<Course>? filteredCourses,
    String? searchQuery,
  }) {
    return CoursesData(
      courses: courses ?? this.courses,
      filteredCourses: filteredCourses ?? this.filteredCourses,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

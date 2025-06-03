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
  final List<ShortCourse> courses;
  final List<ShortCourse> filteredCourses;
  final String? searchQuery;
  final bool hasMore;

  const CoursesData({
    required this.courses,
    required this.filteredCourses,
    this.searchQuery,
    required this.hasMore,
  });

  CoursesData copyWith({
    List<ShortCourse>? courses,
    List<ShortCourse>? filteredCourses,
    String? searchQuery,
    bool? hasMore,
  }) {
    return CoursesData(
      courses: courses ?? this.courses,
      filteredCourses: filteredCourses ?? this.filteredCourses,
      searchQuery: searchQuery ?? this.searchQuery,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

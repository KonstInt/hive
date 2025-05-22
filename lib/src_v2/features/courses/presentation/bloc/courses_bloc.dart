import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/courses/data/repositories/courses_repository_impl.dart';
import 'package:hive/src_v2/features/courses/domain/models/course.dart';

import '../../../auth/domain/interactor/auth_interactor.dart';

part 'courses_event.dart';
part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final AuthInteractor _authInteractor;
  final CoursesRepositoryImpl _coursesRepository;
  CoursesBloc({
    required AuthInteractor authInteractor,
    required CoursesRepositoryImpl coursesRepository,
  })  : _authInteractor = authInteractor,
        _coursesRepository = coursesRepository,
        super(const CoursesInitial()) {
    on<LoadCourses>(_onLoadCourses);
    on<EnrollInCourse>(_onEnrollInCourse);
    on<SearchCourses>(_onSearchCourses);
  }

  Future<void> _onLoadCourses(
      LoadCourses event, Emitter<CoursesState> emit) async {
    try {
      emit(const CoursesLoading());
      final courses = await _coursesRepository.getCourses(
        _authInteractor.getCurrentUuid(),
      );
      emit(CoursesData(
        courses: courses,
        filteredCourses: courses,
      ));
    } catch (e) {
      emit(CoursesError(e.toString()));
    }
  }

  Future<void> _onEnrollInCourse(
      EnrollInCourse event, Emitter<CoursesState> emit) async {
    if (state is! CoursesData) return;

    final currentState = state as CoursesData;
    try {
      await _coursesRepository.enrollInCourse(
        _authInteractor.getCurrentUuid(),
        event.courseId,
      );
      final courses = await _coursesRepository.getCourses(
        _authInteractor.getCurrentUuid(),
      );
      emit(currentState.copyWith(
        courses: courses,
        filteredCourses: _filterCourses(courses, currentState.searchQuery),
      ));
    } catch (e) {
      emit(CoursesError(e.toString()));
    }
  }

  void _onSearchCourses(SearchCourses event, Emitter<CoursesState> emit) {
    if (state is! CoursesData) return;

    final currentState = state as CoursesData;
    final filteredCourses = _filterCourses(currentState.courses, event.query);
    emit(currentState.copyWith(
      filteredCourses: filteredCourses,
      searchQuery: event.query,
    ));
  }

  List<Course> _filterCourses(List<Course> courses, String? query) {
    if (query == null || query.isEmpty) return courses;

    final lowercaseQuery = query.toLowerCase();
    return courses
        .where((course) => course.title.toLowerCase().contains(lowercaseQuery))
        .toList();
  }
}

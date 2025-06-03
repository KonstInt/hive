import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/courses/all_courses/data/repositories/courses_repository_impl.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course.dart';

import '../../../../auth/domain/interactor/auth_interactor.dart';

part 'courses_event.dart';
part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final AuthInteractor _authInteractor;
  final CoursesRepositoryImpl _coursesRepository;
  static const int _pageSize = 20;

  CoursesBloc({
    required AuthInteractor authInteractor,
    required CoursesRepositoryImpl coursesRepository,
  })  : _authInteractor = authInteractor,
        _coursesRepository = coursesRepository,
        super(const CoursesInitial()) {
    on<LoadCourses>(_onLoadCourses);
    on<LoadMore>(_onLoadMore);
    on<EnrollInCourse>(_onEnrollInCourse);
    on<SearchCourses>(_onSearchCourses);
  }

  Future<void> _onLoadCourses(
      LoadCourses event, Emitter<CoursesState> emit) async {
    try {
      emit(const CoursesLoading());
      final courses = await _coursesRepository.getCourses(
        _authInteractor.getCurrentUuid(),
        page: event.usePagination ? 1 : null,
        limit: event.usePagination ? _pageSize : null,
      );
      emit(CoursesData(
        courses: courses,
        filteredCourses: courses,
        hasMore: event.usePagination && courses.length == _pageSize,
      ));
    } catch (e) {
      emit(CoursesError(e.toString()));
    }
  }

  Future<void> _onLoadMore(LoadMore event, Emitter<CoursesState> emit) async {
    if (state is! CoursesData) return;

    final currentState = state as CoursesData;
    if (!currentState.hasMore) return;

    try {
      final nextPage = currentState.courses.length ~/ _pageSize + 1;
      final moreCourses = await _coursesRepository.getCourses(
        _authInteractor.getCurrentUuid(),
        page: nextPage,
        limit: _pageSize,
      );

      final updatedCourses = [...currentState.courses, ...moreCourses];
      emit(currentState.copyWith(
        courses: updatedCourses,
        filteredCourses:
            _filterCourses(updatedCourses, currentState.searchQuery),
        hasMore: moreCourses.length == _pageSize,
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
        page: currentState.hasMore ? 1 : null,
        limit: currentState.hasMore ? _pageSize : null,
      );
      emit(currentState.copyWith(
        courses: courses,
        filteredCourses: _filterCourses(courses, currentState.searchQuery),
        hasMore: currentState.hasMore && courses.length == _pageSize,
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

  List<ShortCourse> _filterCourses(List<ShortCourse> courses, String? query) {
    if (query == null || query.isEmpty) return courses;

    final lowercaseQuery = query.toLowerCase();
    return courses
        .where((course) => course.title.toLowerCase().contains(lowercaseQuery))
        .toList();
  }
}

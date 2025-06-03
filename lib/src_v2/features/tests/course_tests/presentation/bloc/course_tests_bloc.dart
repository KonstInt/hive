import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import '../../domain/models/course_test_model.dart';
import '../../data/repositories/course_tests_repository.dart';

part 'course_tests_event.dart';
part 'course_tests_state.dart';

class CourseTestsBloc extends Bloc<CourseTestsEvent, CourseTestsState> {
  final CourseTestsRepository _repository;
  final String _courseId;
  final AuthInteractor _authInteractor;
  static const int _pageSize = 40;

  CourseTestsBloc({
    required CourseTestsRepository repository,
    required String courseId,
    required AuthInteractor authInteractor,
  })  : _repository = repository,
        _courseId = courseId,
        _authInteractor = authInteractor,
        super(const CourseTestsInitial()) {
    on<LoadTestsEvent>(_onLoadTests);
    on<LoadMoreEvent>(_onLoadMore);
  }

  Future<void> _onLoadTests(
      LoadTestsEvent event, Emitter<CourseTestsState> emit) async {
    emit(const CourseTestsLoading());
    try {
      final tests = await _repository.getTests(
        courseId: _courseId,
        page: 1,
        limit: _pageSize,
        userId: _authInteractor.getCurrentUuid(),
      );
      emit(CourseTestsLoaded(
        tests: tests,
        hasMore: tests.length == _pageSize,
      ));
    } catch (e) {
      emit(CourseTestsError(message: e.toString()));
    }
  }

  Future<void> _onLoadMore(
      LoadMoreEvent event, Emitter<CourseTestsState> emit) async {
    final currentState = state;
    if (currentState is! CourseTestsLoaded) return;

    try {
      final nextPage = currentState.tests.length ~/ _pageSize + 1;
      final moreTests = await _repository.getTests(
        courseId: _courseId,
        page: nextPage,
        limit: _pageSize,
        userId: _authInteractor.getCurrentUuid(),
      );
      emit(CourseTestsLoaded(
        tests: [...currentState.tests, ...moreTests],
        hasMore: moreTests.length == _pageSize,
      ));
    } catch (e) {
      emit(CourseTestsError(message: e.toString()));
    }
  }
}

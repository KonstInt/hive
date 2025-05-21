import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/course_model.dart';
import '../repositories/my_courses_repository.dart';
part 'my_courses_event.dart';
part 'my_courses_state.dart';

class MyCoursesBloc extends Bloc<MyCoursesEvent, MyCoursesState> {
  final MyCoursesRepository _repository;
  final String userId;

  MyCoursesBloc({
    required MyCoursesRepository repository,
    required this.userId,
  })  : _repository = repository,
        super(const MyCoursesState.initial()) {
    on<LoadCoursesEvent>(_onLoadCourses);
    on<RefreshEvent>(_onRefresh);
  }

  Future<void> _onLoadCourses(
    LoadCoursesEvent event,
    Emitter<MyCoursesState> emit,
  ) async {
    try {
      emit(const MyCoursesState.loading());
      final courses = await _repository.getUserCourses(userId);
      emit(MyCoursesState.loaded(courses));
    } catch (e) {
      emit(MyCoursesState.error(e.toString()));
    }
  }

  Future<void> _onRefresh(
    RefreshEvent event,
    Emitter<MyCoursesState> emit,
  ) async {
    try {
      final courses = await _repository.getUserCourses(userId);
      emit(MyCoursesState.loaded(courses));
    } catch (e) {
      emit(MyCoursesState.error(e.toString()));
    }
  }
}

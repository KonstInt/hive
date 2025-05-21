import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/course.dart';
import '../../domain/usecases/get_all_courses_usecase.dart';
import '../../../../utils/usecase.dart';

part 'courses_bloc.freezed.dart';
part 'courses_event.dart';
part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final GetAllCoursesUseCase _getAllCoursesUseCase;

  CoursesBloc(this._getAllCoursesUseCase)
      : super(const CoursesState.initial()) {
    on<CoursesEvent>((event, emit) async {
      await event.map(
        loadCourses: (_) async {
          emit(const CoursesState.loading());
          final result = await _getAllCoursesUseCase(NoParams());
          result.fold(
            (failure) => emit(CoursesState.error(failure.message)),
            (courses) => emit(CoursesState.loaded(courses)),
          );
        },
      );
    });
  }
}

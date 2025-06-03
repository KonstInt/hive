import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../auth/domain/interactor/auth_interactor.dart';
import '../../domain/models/full_course_model.dart';
import '../../data/repositories/course_repository.dart';

part 'full_course_event.dart';
part 'full_course_state.dart';

class FullCourseBloc extends Bloc<FullCourseEvent, FullCourseState> {
  final CourseRepository _repository;
  final AuthInteractor _authInteractor;
  final String _courseId;

  FullCourseBloc({
    required CourseRepository repository,
    required AuthInteractor authInteractor,
    required String courseId,
  })  : _repository = repository,
        _courseId = courseId,
        _authInteractor = authInteractor,
        super(
          FullCourseLoading(),
        ) {
    on<RefreshEvent>(_onRefresh);
  }

  Future<void> _onRefresh(
      RefreshEvent event, Emitter<FullCourseState> emit) async {
    emit(const FullCourseLoading());
    try {
      final course = await _repository.getCourse(
        courseId: _courseId,
        userId: _authInteractor.getCurrentUuid(),
      );
      emit(
        FullCourseLoaded(
          course: course,
        ),
      );
    } catch (e) {
      emit(
        FullCourseError(
          message: e.toString(),
        ),
      );
    }
  }
}

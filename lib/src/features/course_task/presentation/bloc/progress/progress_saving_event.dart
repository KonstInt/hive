part of 'progress_saving_bloc.dart';

@freezed
class ProgressSavingEvent with _$ProgressSavingEvent {
  const factory ProgressSavingEvent.save({required CourseTestTaskMeta answer, required CourseTestTask task}) = _Save;
}

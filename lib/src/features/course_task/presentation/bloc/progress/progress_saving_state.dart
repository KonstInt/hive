part of 'progress_saving_bloc.dart';

@freezed
class ProgressSavingState with _$ProgressSavingState {
  const factory ProgressSavingState.initial() = _Initial;
  const factory ProgressSavingState.saving() = _Saving;
  const factory ProgressSavingState.saved() = _Saved;
  const factory ProgressSavingState.error() = _Error;
}

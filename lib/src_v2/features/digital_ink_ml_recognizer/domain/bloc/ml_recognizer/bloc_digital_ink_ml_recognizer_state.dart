part of 'bloc_digital_ink_ml_recognizer_bloc.dart';

@freezed
class BlocDigitalInkMlRecognizerState with _$BlocDigitalInkMlRecognizerState {
  const factory BlocDigitalInkMlRecognizerState.initial() = _Initial;
  const factory BlocDigitalInkMlRecognizerState.loading() = _Loading;
  const factory BlocDigitalInkMlRecognizerState.error(
      {required String errorStr}) = _Error;
  const factory BlocDigitalInkMlRecognizerState.loaded(
      {required List<String> results}) = _Loaded;
}

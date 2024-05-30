part of 'bloc_digital_ink_ml_recognizer_bloc.dart';

@freezed
class BlocDigitalInkMlRecognizerEvent with _$BlocDigitalInkMlRecognizerEvent {
  const factory BlocDigitalInkMlRecognizerEvent.recognize(
      {required Ink data,
      required LanguagesDigitalInlEnum language}) = _Recognize;
}

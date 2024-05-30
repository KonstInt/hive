import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';

part 'send_digital_ink_model.freezed.dart';

@freezed
abstract class SendDigitalInkModel with _$SendDigitalInkModel {
  factory SendDigitalInkModel(
      {required Ink data,
      required LanguagesDigitalInlEnum language}) = _SendDigitalInkModel;
}

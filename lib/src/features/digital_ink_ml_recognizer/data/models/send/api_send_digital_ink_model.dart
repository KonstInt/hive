import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/enums/api_languages_digital_ink_enum.dart';

part 'api_send_digital_ink_model.freezed.dart';

@freezed
abstract class ApiSendDigitalInkModel with _$ApiSendDigitalInkModel {
  factory ApiSendDigitalInkModel(
      {required Ink data,
      required ApiLanguagesDigitalInlEnum language}) = _ApiSendDigitalInkModel;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_get_digital_ink_model.freezed.dart';

@freezed
abstract class ApiGetDigitalInkModel with _$ApiGetDigitalInkModel {
  factory ApiGetDigitalInkModel({required String word, required double score}) =
      _ApiGetDigitalInkModel;
}

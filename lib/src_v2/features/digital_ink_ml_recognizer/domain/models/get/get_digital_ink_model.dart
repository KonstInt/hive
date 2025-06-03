import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_digital_ink_model.freezed.dart';

@freezed
abstract class GetDigitalInkModel with _$GetDigitalInkModel {
  factory GetDigitalInkModel({required String word, required double score}) =
      _GetDigitalInkModel;
}

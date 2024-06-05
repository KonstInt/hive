import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_info_update.freezed.dart';

@freezed
abstract class TestInfoUpdate with _$TestInfoUpdate {
  factory TestInfoUpdate({
    required String taskId,
    required String taskMetaId,
    required double scores,
  }) = _TestInfoUpdate;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tests_info.freezed.dart';

@freezed
abstract class TestsInfo with _$TestsInfo {
   factory TestsInfo({required List<String> tests,required Map<String, String> meta}) = _TestsInfo;
}
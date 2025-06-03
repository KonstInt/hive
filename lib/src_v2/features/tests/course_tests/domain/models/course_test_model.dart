import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_test_model.freezed.dart';
part 'course_test_model.g.dart';

enum TestState {
  notStarted,
  inProgress,
  completed,
}


@freezed
abstract class CourseTestModel with _$CourseTestModel {
  const factory CourseTestModel({
    required String id,
    required String description,
    required int taskCount,
    String? imageUrl,
    required int taskCompleted,
    required double progressPercentage,
    required TestState testState,
  }) = _CourseTestModel;

  factory CourseTestModel.fromJson(Map<String, dynamic> json) =>
      _$CourseTestModelFromJson(json);
}

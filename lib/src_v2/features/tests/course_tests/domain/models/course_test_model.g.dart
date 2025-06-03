// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTestModelImpl _$$CourseTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTestModelImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      taskCount: (json['taskCount'] as num).toInt(),
      imageUrl: json['imageUrl'] as String?,
      taskCompleted: (json['taskCompleted'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
      testState: $enumDecode(_$TestStateEnumMap, json['testState']),
    );

Map<String, dynamic> _$$CourseTestModelImplToJson(
        _$CourseTestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'taskCount': instance.taskCount,
      'imageUrl': instance.imageUrl,
      'taskCompleted': instance.taskCompleted,
      'progressPercentage': instance.progressPercentage,
      'testState': _$TestStateEnumMap[instance.testState]!,
    };

const _$TestStateEnumMap = {
  TestState.notStarted: 'notStarted',
  TestState.inProgress: 'inProgress',
  TestState.completed: 'completed',
};

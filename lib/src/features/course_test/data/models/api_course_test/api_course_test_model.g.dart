// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_course_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCourseTestModelImpl _$$ApiCourseTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCourseTestModelImpl(
      testName: json['testName'] as String,
      testDescription: json['testDescription'] as String,
      taskListIds: (json['taskListIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      maxScores: (json['maxScores'] as num).toDouble(),
      meta: json['meta'] == null
          ? null
          : ApiCourseTestMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiCourseTestModelImplToJson(
        _$ApiCourseTestModelImpl instance) =>
    <String, dynamic>{
      'testName': instance.testName,
      'testDescription': instance.testDescription,
      'taskListIds': instance.taskListIds,
      'maxScores': instance.maxScores,
      'meta': instance.meta?.toJson(),
    };

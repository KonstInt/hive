// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_course_test_task_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCourseTestTaskMetaDigitalInkImpl
    _$$ApiCourseTestTaskMetaDigitalInkImplFromJson(Map<String, dynamic> json) =>
        _$ApiCourseTestTaskMetaDigitalInkImpl(
          ink: json['ink'] as String,
          recognition: json['recognition'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ApiCourseTestTaskMetaDigitalInkImplToJson(
        _$ApiCourseTestTaskMetaDigitalInkImpl instance) =>
    <String, dynamic>{
      'ink': instance.ink,
      'recognition': instance.recognition,
      'runtimeType': instance.$type,
    };

_$ApiCourseTestTaskMetaQuizImpl _$$ApiCourseTestTaskMetaQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCourseTestTaskMetaQuizImpl(
      answer: ApiCourseTestTaskAnswer.fromJson(
          json['answer'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiCourseTestTaskMetaQuizImplToJson(
        _$ApiCourseTestTaskMetaQuizImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'runtimeType': instance.$type,
    };

_$ApiCourseTestTaskMetaQuizMultipleChoiceImpl
    _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl(
          answer: (json['answer'] as List<dynamic>)
              .map((e) =>
                  ApiCourseTestTaskAnswer.fromJson(e as Map<String, dynamic>))
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplToJson(
        _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'runtimeType': instance.$type,
    };

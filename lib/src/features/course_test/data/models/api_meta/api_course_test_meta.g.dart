// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_course_test_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCourseTestMetaImpl _$$ApiCourseTestMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCourseTestMetaImpl(
      metaAnswers: Map<String, String>.from(json['metaAnswers'] as Map),
      inProgress: json['inProgress'] as bool,
      currentScores: (json['currentScores'] as num).toDouble(),
    );

Map<String, dynamic> _$$ApiCourseTestMetaImplToJson(
        _$ApiCourseTestMetaImpl instance) =>
    <String, dynamic>{
      'metaAnswers': instance.metaAnswers,
      'inProgress': instance.inProgress,
      'currentScores': instance.currentScores,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_course_test_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCourseTestTaskQuizTypedImpl _$$ApiCourseTestTaskQuizTypedImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCourseTestTaskQuizTypedImpl(
      id: json['id'] as String,
      scores: (json['scores'] as num).toDouble(),
      question: ApiCourseTestTaskQuestion.fromJson(
          json['question'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>)
          .map((e) =>
              ApiCourseTestTaskAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      rightAnswer: ApiCourseTestTaskAnswer.fromJson(
          json['rightAnswer'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : ApiCourseTestTaskMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiCourseTestTaskQuizTypedImplToJson(
        _$ApiCourseTestTaskQuizTypedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scores': instance.scores,
      'question': instance.question.toJson(),
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'rightAnswer': instance.rightAnswer.toJson(),
      'meta': instance.meta?.toJson(),
      'runtimeType': instance.$type,
    };

_$ApiCourseTestTaskMultiChoiceQuizTypedImpl
    _$$ApiCourseTestTaskMultiChoiceQuizTypedImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiCourseTestTaskMultiChoiceQuizTypedImpl(
          id: json['id'] as String,
          scores: (json['scores'] as num).toDouble(),
          question: ApiCourseTestTaskQuestion.fromJson(
              json['question'] as Map<String, dynamic>),
          answers: (json['answers'] as List<dynamic>)
              .map((e) =>
                  ApiCourseTestTaskAnswer.fromJson(e as Map<String, dynamic>))
              .toList(),
          rightAnswers: (json['rightAnswers'] as List<dynamic>)
              .map((e) =>
                  ApiCourseTestTaskAnswer.fromJson(e as Map<String, dynamic>))
              .toList(),
          meta: json['meta'] == null
              ? null
              : ApiCourseTestTaskMeta.fromJson(
                  json['meta'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ApiCourseTestTaskMultiChoiceQuizTypedImplToJson(
        _$ApiCourseTestTaskMultiChoiceQuizTypedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scores': instance.scores,
      'question': instance.question.toJson(),
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'rightAnswers': instance.rightAnswers.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
      'runtimeType': instance.$type,
    };

_$ApiCourseTestTaskDigitalInkImpl _$$ApiCourseTestTaskDigitalInkImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCourseTestTaskDigitalInkImpl(
      id: json['id'] as String,
      scores: (json['scores'] as num).toDouble(),
      question: ApiCourseTestTaskQuestion.fromJson(
          json['question'] as Map<String, dynamic>),
      rightAnswer: json['rightAnswer'] as String,
      languageCode: json['languageCode'] as String,
      meta: json['meta'] == null
          ? null
          : ApiCourseTestTaskMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiCourseTestTaskDigitalInkImplToJson(
        _$ApiCourseTestTaskDigitalInkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scores': instance.scores,
      'question': instance.question.toJson(),
      'rightAnswer': instance.rightAnswer,
      'languageCode': instance.languageCode,
      'meta': instance.meta?.toJson(),
      'runtimeType': instance.$type,
    };

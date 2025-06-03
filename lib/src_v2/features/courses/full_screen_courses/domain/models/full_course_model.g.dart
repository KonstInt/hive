// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullCourseModelImpl _$$FullCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FullCourseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      fullDescription: json['fullDescription'] as String,
      imageUrl: json['imageUrl'] as String?,
      maxPoints: (json['maxPoints'] as num).toInt(),
      currentPoints: (json['currentPoints'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$FullCourseModelImplToJson(
        _$FullCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tags': instance.tags,
      'fullDescription': instance.fullDescription,
      'imageUrl': instance.imageUrl,
      'maxPoints': instance.maxPoints,
      'currentPoints': instance.currentPoints,
      'progressPercentage': instance.progressPercentage,
    };

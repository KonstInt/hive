// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpUserModel _$SignUpUserModelFromJson(Map<String, dynamic> json) =>
    SignUpUserModel(
      email: json['email'] as String,
      name: json['name'] as String,
      secondName: json['secondName'] as String,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$SignUpUserModelToJson(SignUpUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'secondName': instance.secondName,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };



import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_user_model.g.dart';

@JsonSerializable()
class SignUpUserModel {
  final String email;
  final String name;
  final String secondName;
  final String nickname;
  final String? photoUrl;

  SignUpUserModel({
    required this.email,
    required this.name,
    required this.secondName,
    required this.nickname,
    this.photoUrl,
  });

  factory SignUpUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpUserModelToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_api_user_model.freezed.dart';
part 'firebase_api_user_model.g.dart';

@freezed
class FirebaseApiUserModel with _$FirebaseApiUserModel {
  factory FirebaseApiUserModel({
    required String id,
    required String email,
    required String name,
    required String secondName,
    required String nickname,
    required String? photoUrl,
  }) = _FirebaseApiUserModel;
  factory FirebaseApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseApiUserModelFromJson(json);
}

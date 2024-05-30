// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_send_digital_ink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiSendDigitalInkModel {
  Ink get data => throw _privateConstructorUsedError;
  ApiLanguagesDigitalInlEnum get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiSendDigitalInkModelCopyWith<ApiSendDigitalInkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSendDigitalInkModelCopyWith<$Res> {
  factory $ApiSendDigitalInkModelCopyWith(ApiSendDigitalInkModel value,
          $Res Function(ApiSendDigitalInkModel) then) =
      _$ApiSendDigitalInkModelCopyWithImpl<$Res, ApiSendDigitalInkModel>;
  @useResult
  $Res call({Ink data, ApiLanguagesDigitalInlEnum language});
}

/// @nodoc
class _$ApiSendDigitalInkModelCopyWithImpl<$Res,
        $Val extends ApiSendDigitalInkModel>
    implements $ApiSendDigitalInkModelCopyWith<$Res> {
  _$ApiSendDigitalInkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Ink,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ApiLanguagesDigitalInlEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiSendDigitalInkModelImplCopyWith<$Res>
    implements $ApiSendDigitalInkModelCopyWith<$Res> {
  factory _$$ApiSendDigitalInkModelImplCopyWith(
          _$ApiSendDigitalInkModelImpl value,
          $Res Function(_$ApiSendDigitalInkModelImpl) then) =
      __$$ApiSendDigitalInkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ink data, ApiLanguagesDigitalInlEnum language});
}

/// @nodoc
class __$$ApiSendDigitalInkModelImplCopyWithImpl<$Res>
    extends _$ApiSendDigitalInkModelCopyWithImpl<$Res,
        _$ApiSendDigitalInkModelImpl>
    implements _$$ApiSendDigitalInkModelImplCopyWith<$Res> {
  __$$ApiSendDigitalInkModelImplCopyWithImpl(
      _$ApiSendDigitalInkModelImpl _value,
      $Res Function(_$ApiSendDigitalInkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? language = null,
  }) {
    return _then(_$ApiSendDigitalInkModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Ink,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ApiLanguagesDigitalInlEnum,
    ));
  }
}

/// @nodoc

class _$ApiSendDigitalInkModelImpl implements _ApiSendDigitalInkModel {
  _$ApiSendDigitalInkModelImpl({required this.data, required this.language});

  @override
  final Ink data;
  @override
  final ApiLanguagesDigitalInlEnum language;

  @override
  String toString() {
    return 'ApiSendDigitalInkModel(data: $data, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSendDigitalInkModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSendDigitalInkModelImplCopyWith<_$ApiSendDigitalInkModelImpl>
      get copyWith => __$$ApiSendDigitalInkModelImplCopyWithImpl<
          _$ApiSendDigitalInkModelImpl>(this, _$identity);
}

abstract class _ApiSendDigitalInkModel implements ApiSendDigitalInkModel {
  factory _ApiSendDigitalInkModel(
          {required final Ink data,
          required final ApiLanguagesDigitalInlEnum language}) =
      _$ApiSendDigitalInkModelImpl;

  @override
  Ink get data;
  @override
  ApiLanguagesDigitalInlEnum get language;
  @override
  @JsonKey(ignore: true)
  _$$ApiSendDigitalInkModelImplCopyWith<_$ApiSendDigitalInkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

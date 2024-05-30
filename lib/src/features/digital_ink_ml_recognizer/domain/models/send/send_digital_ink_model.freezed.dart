// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_digital_ink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendDigitalInkModel {
  Ink get data => throw _privateConstructorUsedError;
  LanguagesDigitalInlEnum get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendDigitalInkModelCopyWith<SendDigitalInkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendDigitalInkModelCopyWith<$Res> {
  factory $SendDigitalInkModelCopyWith(
          SendDigitalInkModel value, $Res Function(SendDigitalInkModel) then) =
      _$SendDigitalInkModelCopyWithImpl<$Res, SendDigitalInkModel>;
  @useResult
  $Res call({Ink data, LanguagesDigitalInlEnum language});
}

/// @nodoc
class _$SendDigitalInkModelCopyWithImpl<$Res, $Val extends SendDigitalInkModel>
    implements $SendDigitalInkModelCopyWith<$Res> {
  _$SendDigitalInkModelCopyWithImpl(this._value, this._then);

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
              as LanguagesDigitalInlEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendDigitalInkModelImplCopyWith<$Res>
    implements $SendDigitalInkModelCopyWith<$Res> {
  factory _$$SendDigitalInkModelImplCopyWith(_$SendDigitalInkModelImpl value,
          $Res Function(_$SendDigitalInkModelImpl) then) =
      __$$SendDigitalInkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ink data, LanguagesDigitalInlEnum language});
}

/// @nodoc
class __$$SendDigitalInkModelImplCopyWithImpl<$Res>
    extends _$SendDigitalInkModelCopyWithImpl<$Res, _$SendDigitalInkModelImpl>
    implements _$$SendDigitalInkModelImplCopyWith<$Res> {
  __$$SendDigitalInkModelImplCopyWithImpl(_$SendDigitalInkModelImpl _value,
      $Res Function(_$SendDigitalInkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? language = null,
  }) {
    return _then(_$SendDigitalInkModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Ink,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguagesDigitalInlEnum,
    ));
  }
}

/// @nodoc

class _$SendDigitalInkModelImpl implements _SendDigitalInkModel {
  _$SendDigitalInkModelImpl({required this.data, required this.language});

  @override
  final Ink data;
  @override
  final LanguagesDigitalInlEnum language;

  @override
  String toString() {
    return 'SendDigitalInkModel(data: $data, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDigitalInkModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDigitalInkModelImplCopyWith<_$SendDigitalInkModelImpl> get copyWith =>
      __$$SendDigitalInkModelImplCopyWithImpl<_$SendDigitalInkModelImpl>(
          this, _$identity);
}

abstract class _SendDigitalInkModel implements SendDigitalInkModel {
  factory _SendDigitalInkModel(
          {required final Ink data,
          required final LanguagesDigitalInlEnum language}) =
      _$SendDigitalInkModelImpl;

  @override
  Ink get data;
  @override
  LanguagesDigitalInlEnum get language;
  @override
  @JsonKey(ignore: true)
  _$$SendDigitalInkModelImplCopyWith<_$SendDigitalInkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

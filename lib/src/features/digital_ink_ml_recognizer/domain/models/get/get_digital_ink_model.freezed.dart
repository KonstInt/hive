// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_digital_ink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetDigitalInkModel {
  String get word => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetDigitalInkModelCopyWith<GetDigitalInkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigitalInkModelCopyWith<$Res> {
  factory $GetDigitalInkModelCopyWith(
          GetDigitalInkModel value, $Res Function(GetDigitalInkModel) then) =
      _$GetDigitalInkModelCopyWithImpl<$Res, GetDigitalInkModel>;
  @useResult
  $Res call({String word, double score});
}

/// @nodoc
class _$GetDigitalInkModelCopyWithImpl<$Res, $Val extends GetDigitalInkModel>
    implements $GetDigitalInkModelCopyWith<$Res> {
  _$GetDigitalInkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDigitalInkModelImplCopyWith<$Res>
    implements $GetDigitalInkModelCopyWith<$Res> {
  factory _$$GetDigitalInkModelImplCopyWith(_$GetDigitalInkModelImpl value,
          $Res Function(_$GetDigitalInkModelImpl) then) =
      __$$GetDigitalInkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, double score});
}

/// @nodoc
class __$$GetDigitalInkModelImplCopyWithImpl<$Res>
    extends _$GetDigitalInkModelCopyWithImpl<$Res, _$GetDigitalInkModelImpl>
    implements _$$GetDigitalInkModelImplCopyWith<$Res> {
  __$$GetDigitalInkModelImplCopyWithImpl(_$GetDigitalInkModelImpl _value,
      $Res Function(_$GetDigitalInkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? score = null,
  }) {
    return _then(_$GetDigitalInkModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GetDigitalInkModelImpl implements _GetDigitalInkModel {
  _$GetDigitalInkModelImpl({required this.word, required this.score});

  @override
  final String word;
  @override
  final double score;

  @override
  String toString() {
    return 'GetDigitalInkModel(word: $word, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigitalInkModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigitalInkModelImplCopyWith<_$GetDigitalInkModelImpl> get copyWith =>
      __$$GetDigitalInkModelImplCopyWithImpl<_$GetDigitalInkModelImpl>(
          this, _$identity);
}

abstract class _GetDigitalInkModel implements GetDigitalInkModel {
  factory _GetDigitalInkModel(
      {required final String word,
      required final double score}) = _$GetDigitalInkModelImpl;

  @override
  String get word;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$$GetDigitalInkModelImplCopyWith<_$GetDigitalInkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

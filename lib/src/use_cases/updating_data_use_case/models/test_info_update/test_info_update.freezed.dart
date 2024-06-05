// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_info_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestInfoUpdate {
  String get taskId => throw _privateConstructorUsedError;
  String get taskMetaId => throw _privateConstructorUsedError;
  double get scores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestInfoUpdateCopyWith<TestInfoUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestInfoUpdateCopyWith<$Res> {
  factory $TestInfoUpdateCopyWith(
          TestInfoUpdate value, $Res Function(TestInfoUpdate) then) =
      _$TestInfoUpdateCopyWithImpl<$Res, TestInfoUpdate>;
  @useResult
  $Res call({String taskId, String taskMetaId, double scores});
}

/// @nodoc
class _$TestInfoUpdateCopyWithImpl<$Res, $Val extends TestInfoUpdate>
    implements $TestInfoUpdateCopyWith<$Res> {
  _$TestInfoUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? taskMetaId = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      taskMetaId: null == taskMetaId
          ? _value.taskMetaId
          : taskMetaId // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestInfoUpdateImplCopyWith<$Res>
    implements $TestInfoUpdateCopyWith<$Res> {
  factory _$$TestInfoUpdateImplCopyWith(_$TestInfoUpdateImpl value,
          $Res Function(_$TestInfoUpdateImpl) then) =
      __$$TestInfoUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId, String taskMetaId, double scores});
}

/// @nodoc
class __$$TestInfoUpdateImplCopyWithImpl<$Res>
    extends _$TestInfoUpdateCopyWithImpl<$Res, _$TestInfoUpdateImpl>
    implements _$$TestInfoUpdateImplCopyWith<$Res> {
  __$$TestInfoUpdateImplCopyWithImpl(
      _$TestInfoUpdateImpl _value, $Res Function(_$TestInfoUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? taskMetaId = null,
    Object? scores = null,
  }) {
    return _then(_$TestInfoUpdateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      taskMetaId: null == taskMetaId
          ? _value.taskMetaId
          : taskMetaId // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TestInfoUpdateImpl implements _TestInfoUpdate {
  _$TestInfoUpdateImpl(
      {required this.taskId, required this.taskMetaId, required this.scores});

  @override
  final String taskId;
  @override
  final String taskMetaId;
  @override
  final double scores;

  @override
  String toString() {
    return 'TestInfoUpdate(taskId: $taskId, taskMetaId: $taskMetaId, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestInfoUpdateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.taskMetaId, taskMetaId) ||
                other.taskMetaId == taskMetaId) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, taskMetaId, scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestInfoUpdateImplCopyWith<_$TestInfoUpdateImpl> get copyWith =>
      __$$TestInfoUpdateImplCopyWithImpl<_$TestInfoUpdateImpl>(
          this, _$identity);
}

abstract class _TestInfoUpdate implements TestInfoUpdate {
  factory _TestInfoUpdate(
      {required final String taskId,
      required final String taskMetaId,
      required final double scores}) = _$TestInfoUpdateImpl;

  @override
  String get taskId;
  @override
  String get taskMetaId;
  @override
  double get scores;
  @override
  @JsonKey(ignore: true)
  _$$TestInfoUpdateImplCopyWith<_$TestInfoUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

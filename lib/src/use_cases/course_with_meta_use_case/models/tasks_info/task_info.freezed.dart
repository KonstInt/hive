// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskInfo {
  String get task => throw _privateConstructorUsedError;
  bool get hasMeta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskInfoCopyWith<TaskInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskInfoCopyWith<$Res> {
  factory $TaskInfoCopyWith(TaskInfo value, $Res Function(TaskInfo) then) =
      _$TaskInfoCopyWithImpl<$Res, TaskInfo>;
  @useResult
  $Res call({String task, bool hasMeta});
}

/// @nodoc
class _$TaskInfoCopyWithImpl<$Res, $Val extends TaskInfo>
    implements $TaskInfoCopyWith<$Res> {
  _$TaskInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? hasMeta = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      hasMeta: null == hasMeta
          ? _value.hasMeta
          : hasMeta // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksInfoImplCopyWith<$Res>
    implements $TaskInfoCopyWith<$Res> {
  factory _$$TasksInfoImplCopyWith(
          _$TasksInfoImpl value, $Res Function(_$TasksInfoImpl) then) =
      __$$TasksInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String task, bool hasMeta});
}

/// @nodoc
class __$$TasksInfoImplCopyWithImpl<$Res>
    extends _$TaskInfoCopyWithImpl<$Res, _$TasksInfoImpl>
    implements _$$TasksInfoImplCopyWith<$Res> {
  __$$TasksInfoImplCopyWithImpl(
      _$TasksInfoImpl _value, $Res Function(_$TasksInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? hasMeta = null,
  }) {
    return _then(_$TasksInfoImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      hasMeta: null == hasMeta
          ? _value.hasMeta
          : hasMeta // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TasksInfoImpl implements _TasksInfo {
  _$TasksInfoImpl({required this.task, required this.hasMeta});

  @override
  final String task;
  @override
  final bool hasMeta;

  @override
  String toString() {
    return 'TaskInfo(task: $task, hasMeta: $hasMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksInfoImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.hasMeta, hasMeta) || other.hasMeta == hasMeta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, hasMeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksInfoImplCopyWith<_$TasksInfoImpl> get copyWith =>
      __$$TasksInfoImplCopyWithImpl<_$TasksInfoImpl>(this, _$identity);
}

abstract class _TasksInfo implements TaskInfo {
  factory _TasksInfo(
      {required final String task,
      required final bool hasMeta}) = _$TasksInfoImpl;

  @override
  String get task;
  @override
  bool get hasMeta;
  @override
  @JsonKey(ignore: true)
  _$$TasksInfoImplCopyWith<_$TasksInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

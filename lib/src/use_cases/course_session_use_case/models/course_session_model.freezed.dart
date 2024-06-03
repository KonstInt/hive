// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseSessionModel {
  String? get courseId => throw _privateConstructorUsedError;
  String? get testId => throw _privateConstructorUsedError;
  String? get taskId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseSessionModelCopyWith<CourseSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSessionModelCopyWith<$Res> {
  factory $CourseSessionModelCopyWith(
          CourseSessionModel value, $Res Function(CourseSessionModel) then) =
      _$CourseSessionModelCopyWithImpl<$Res, CourseSessionModel>;
  @useResult
  $Res call({String? courseId, String? testId, String? taskId});
}

/// @nodoc
class _$CourseSessionModelCopyWithImpl<$Res, $Val extends CourseSessionModel>
    implements $CourseSessionModelCopyWith<$Res> {
  _$CourseSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? testId = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      testId: freezed == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseSessionModelImplCopyWith<$Res>
    implements $CourseSessionModelCopyWith<$Res> {
  factory _$$CourseSessionModelImplCopyWith(_$CourseSessionModelImpl value,
          $Res Function(_$CourseSessionModelImpl) then) =
      __$$CourseSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? courseId, String? testId, String? taskId});
}

/// @nodoc
class __$$CourseSessionModelImplCopyWithImpl<$Res>
    extends _$CourseSessionModelCopyWithImpl<$Res, _$CourseSessionModelImpl>
    implements _$$CourseSessionModelImplCopyWith<$Res> {
  __$$CourseSessionModelImplCopyWithImpl(_$CourseSessionModelImpl _value,
      $Res Function(_$CourseSessionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? testId = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_$CourseSessionModelImpl(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      testId: freezed == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseSessionModelImpl implements _CourseSessionModel {
  _$CourseSessionModelImpl(
      {required this.courseId, required this.testId, required this.taskId});

  @override
  final String? courseId;
  @override
  final String? testId;
  @override
  final String? taskId;

  @override
  String toString() {
    return 'CourseSessionModel(courseId: $courseId, testId: $testId, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSessionModelImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, testId, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSessionModelImplCopyWith<_$CourseSessionModelImpl> get copyWith =>
      __$$CourseSessionModelImplCopyWithImpl<_$CourseSessionModelImpl>(
          this, _$identity);
}

abstract class _CourseSessionModel implements CourseSessionModel {
  factory _CourseSessionModel(
      {required final String? courseId,
      required final String? testId,
      required final String? taskId}) = _$CourseSessionModelImpl;

  @override
  String? get courseId;
  @override
  String? get testId;
  @override
  String? get taskId;
  @override
  @JsonKey(ignore: true)
  _$$CourseSessionModelImplCopyWith<_$CourseSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

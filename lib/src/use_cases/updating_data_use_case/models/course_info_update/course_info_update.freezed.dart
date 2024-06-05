// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_info_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseInfoUpdate {
  String get testId => throw _privateConstructorUsedError;
  String get testMetaId => throw _privateConstructorUsedError;
  double get scores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseInfoUpdateCopyWith<CourseInfoUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseInfoUpdateCopyWith<$Res> {
  factory $CourseInfoUpdateCopyWith(
          CourseInfoUpdate value, $Res Function(CourseInfoUpdate) then) =
      _$CourseInfoUpdateCopyWithImpl<$Res, CourseInfoUpdate>;
  @useResult
  $Res call({String testId, String testMetaId, double scores});
}

/// @nodoc
class _$CourseInfoUpdateCopyWithImpl<$Res, $Val extends CourseInfoUpdate>
    implements $CourseInfoUpdateCopyWith<$Res> {
  _$CourseInfoUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testMetaId = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testMetaId: null == testMetaId
          ? _value.testMetaId
          : testMetaId // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseInfoUpdateImplCopyWith<$Res>
    implements $CourseInfoUpdateCopyWith<$Res> {
  factory _$$CourseInfoUpdateImplCopyWith(_$CourseInfoUpdateImpl value,
          $Res Function(_$CourseInfoUpdateImpl) then) =
      __$$CourseInfoUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String testId, String testMetaId, double scores});
}

/// @nodoc
class __$$CourseInfoUpdateImplCopyWithImpl<$Res>
    extends _$CourseInfoUpdateCopyWithImpl<$Res, _$CourseInfoUpdateImpl>
    implements _$$CourseInfoUpdateImplCopyWith<$Res> {
  __$$CourseInfoUpdateImplCopyWithImpl(_$CourseInfoUpdateImpl _value,
      $Res Function(_$CourseInfoUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testMetaId = null,
    Object? scores = null,
  }) {
    return _then(_$CourseInfoUpdateImpl(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testMetaId: null == testMetaId
          ? _value.testMetaId
          : testMetaId // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CourseInfoUpdateImpl implements _CourseInfoUpdate {
  _$CourseInfoUpdateImpl(
      {required this.testId, required this.testMetaId, required this.scores});

  @override
  final String testId;
  @override
  final String testMetaId;
  @override
  final double scores;

  @override
  String toString() {
    return 'CourseInfoUpdate(testId: $testId, testMetaId: $testMetaId, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseInfoUpdateImpl &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testMetaId, testMetaId) ||
                other.testMetaId == testMetaId) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testId, testMetaId, scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseInfoUpdateImplCopyWith<_$CourseInfoUpdateImpl> get copyWith =>
      __$$CourseInfoUpdateImplCopyWithImpl<_$CourseInfoUpdateImpl>(
          this, _$identity);
}

abstract class _CourseInfoUpdate implements CourseInfoUpdate {
  factory _CourseInfoUpdate(
      {required final String testId,
      required final String testMetaId,
      required final double scores}) = _$CourseInfoUpdateImpl;

  @override
  String get testId;
  @override
  String get testMetaId;
  @override
  double get scores;
  @override
  @JsonKey(ignore: true)
  _$$CourseInfoUpdateImplCopyWith<_$CourseInfoUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

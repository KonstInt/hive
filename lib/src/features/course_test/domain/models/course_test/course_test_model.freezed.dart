// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestModel {
  String get testName => throw _privateConstructorUsedError;
  String get testDescription => throw _privateConstructorUsedError;
  List<String> get taskListIds => throw _privateConstructorUsedError;
  double get maxScores => throw _privateConstructorUsedError;
  CourseTestMeta? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseTestModelCopyWith<CourseTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestModelCopyWith<$Res> {
  factory $CourseTestModelCopyWith(
          CourseTestModel value, $Res Function(CourseTestModel) then) =
      _$CourseTestModelCopyWithImpl<$Res, CourseTestModel>;
  @useResult
  $Res call(
      {String testName,
      String testDescription,
      List<String> taskListIds,
      double maxScores,
      CourseTestMeta? meta});

  $CourseTestMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CourseTestModelCopyWithImpl<$Res, $Val extends CourseTestModel>
    implements $CourseTestModelCopyWith<$Res> {
  _$CourseTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = null,
    Object? testDescription = null,
    Object? taskListIds = null,
    Object? maxScores = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      testDescription: null == testDescription
          ? _value.testDescription
          : testDescription // ignore: cast_nullable_to_non_nullable
              as String,
      taskListIds: null == taskListIds
          ? _value.taskListIds
          : taskListIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as double,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CourseTestMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $CourseTestMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTestModelImplCopyWith<$Res>
    implements $CourseTestModelCopyWith<$Res> {
  factory _$$CourseTestModelImplCopyWith(_$CourseTestModelImpl value,
          $Res Function(_$CourseTestModelImpl) then) =
      __$$CourseTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String testName,
      String testDescription,
      List<String> taskListIds,
      double maxScores,
      CourseTestMeta? meta});

  @override
  $CourseTestMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CourseTestModelImplCopyWithImpl<$Res>
    extends _$CourseTestModelCopyWithImpl<$Res, _$CourseTestModelImpl>
    implements _$$CourseTestModelImplCopyWith<$Res> {
  __$$CourseTestModelImplCopyWithImpl(
      _$CourseTestModelImpl _value, $Res Function(_$CourseTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = null,
    Object? testDescription = null,
    Object? taskListIds = null,
    Object? maxScores = null,
    Object? meta = freezed,
  }) {
    return _then(_$CourseTestModelImpl(
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      testDescription: null == testDescription
          ? _value.testDescription
          : testDescription // ignore: cast_nullable_to_non_nullable
              as String,
      taskListIds: null == taskListIds
          ? _value._taskListIds
          : taskListIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxScores: null == maxScores
          ? _value.maxScores
          : maxScores // ignore: cast_nullable_to_non_nullable
              as double,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CourseTestMeta?,
    ));
  }
}

/// @nodoc

class _$CourseTestModelImpl implements _CourseTestModel {
  _$CourseTestModelImpl(
      {required this.testName,
      required this.testDescription,
      required final List<String> taskListIds,
      required this.maxScores,
      this.meta})
      : _taskListIds = taskListIds;

  @override
  final String testName;
  @override
  final String testDescription;
  final List<String> _taskListIds;
  @override
  List<String> get taskListIds {
    if (_taskListIds is EqualUnmodifiableListView) return _taskListIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskListIds);
  }

  @override
  final double maxScores;
  @override
  final CourseTestMeta? meta;

  @override
  String toString() {
    return 'CourseTestModel(testName: $testName, testDescription: $testDescription, taskListIds: $taskListIds, maxScores: $maxScores, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestModelImpl &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.testDescription, testDescription) ||
                other.testDescription == testDescription) &&
            const DeepCollectionEquality()
                .equals(other._taskListIds, _taskListIds) &&
            (identical(other.maxScores, maxScores) ||
                other.maxScores == maxScores) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testName, testDescription,
      const DeepCollectionEquality().hash(_taskListIds), maxScores, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestModelImplCopyWith<_$CourseTestModelImpl> get copyWith =>
      __$$CourseTestModelImplCopyWithImpl<_$CourseTestModelImpl>(
          this, _$identity);
}

abstract class _CourseTestModel implements CourseTestModel {
  factory _CourseTestModel(
      {required final String testName,
      required final String testDescription,
      required final List<String> taskListIds,
      required final double maxScores,
      final CourseTestMeta? meta}) = _$CourseTestModelImpl;

  @override
  String get testName;
  @override
  String get testDescription;
  @override
  List<String> get taskListIds;
  @override
  double get maxScores;
  @override
  CourseTestMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestModelImplCopyWith<_$CourseTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

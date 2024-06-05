// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestModel _$ApiCourseTestModelFromJson(Map<String, dynamic> json) {
  return _ApiCourseTestModel.fromJson(json);
}

/// @nodoc
mixin _$ApiCourseTestModel {
  String get testName => throw _privateConstructorUsedError;
  String get testDescription => throw _privateConstructorUsedError;
  List<String> get taskListIds => throw _privateConstructorUsedError;
  double get maxScores => throw _privateConstructorUsedError;
  ApiCourseTestMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCourseTestModelCopyWith<ApiCourseTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestModelCopyWith<$Res> {
  factory $ApiCourseTestModelCopyWith(
          ApiCourseTestModel value, $Res Function(ApiCourseTestModel) then) =
      _$ApiCourseTestModelCopyWithImpl<$Res, ApiCourseTestModel>;
  @useResult
  $Res call(
      {String testName,
      String testDescription,
      List<String> taskListIds,
      double maxScores,
      ApiCourseTestMeta? meta});

  $ApiCourseTestMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ApiCourseTestModelCopyWithImpl<$Res, $Val extends ApiCourseTestModel>
    implements $ApiCourseTestModelCopyWith<$Res> {
  _$ApiCourseTestModelCopyWithImpl(this._value, this._then);

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
              as ApiCourseTestMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiCourseTestMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $ApiCourseTestMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiCourseTestModelImplCopyWith<$Res>
    implements $ApiCourseTestModelCopyWith<$Res> {
  factory _$$ApiCourseTestModelImplCopyWith(_$ApiCourseTestModelImpl value,
          $Res Function(_$ApiCourseTestModelImpl) then) =
      __$$ApiCourseTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String testName,
      String testDescription,
      List<String> taskListIds,
      double maxScores,
      ApiCourseTestMeta? meta});

  @override
  $ApiCourseTestMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ApiCourseTestModelImplCopyWithImpl<$Res>
    extends _$ApiCourseTestModelCopyWithImpl<$Res, _$ApiCourseTestModelImpl>
    implements _$$ApiCourseTestModelImplCopyWith<$Res> {
  __$$ApiCourseTestModelImplCopyWithImpl(_$ApiCourseTestModelImpl _value,
      $Res Function(_$ApiCourseTestModelImpl) _then)
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
    return _then(_$ApiCourseTestModelImpl(
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
              as ApiCourseTestMeta?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiCourseTestModelImpl implements _ApiCourseTestModel {
  _$ApiCourseTestModelImpl(
      {required this.testName,
      required this.testDescription,
      required final List<String> taskListIds,
      required this.maxScores,
      this.meta})
      : _taskListIds = taskListIds;

  factory _$ApiCourseTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCourseTestModelImplFromJson(json);

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
  final ApiCourseTestMeta? meta;

  @override
  String toString() {
    return 'ApiCourseTestModel(testName: $testName, testDescription: $testDescription, taskListIds: $taskListIds, maxScores: $maxScores, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, testName, testDescription,
      const DeepCollectionEquality().hash(_taskListIds), maxScores, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestModelImplCopyWith<_$ApiCourseTestModelImpl> get copyWith =>
      __$$ApiCourseTestModelImplCopyWithImpl<_$ApiCourseTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestModelImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestModel implements ApiCourseTestModel {
  factory _ApiCourseTestModel(
      {required final String testName,
      required final String testDescription,
      required final List<String> taskListIds,
      required final double maxScores,
      final ApiCourseTestMeta? meta}) = _$ApiCourseTestModelImpl;

  factory _ApiCourseTestModel.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestModelImpl.fromJson;

  @override
  String get testName;
  @override
  String get testDescription;
  @override
  List<String> get taskListIds;
  @override
  double get maxScores;
  @override
  ApiCourseTestMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ApiCourseTestModelImplCopyWith<_$ApiCourseTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

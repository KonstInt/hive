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

CourseTestModel _$CourseTestModelFromJson(Map<String, dynamic> json) {
  return _CourseTestModel.fromJson(json);
}

/// @nodoc
mixin _$CourseTestModel {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get taskCount => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get taskCompleted => throw _privateConstructorUsedError;
  double get progressPercentage => throw _privateConstructorUsedError;
  TestState get testState => throw _privateConstructorUsedError;

  /// Serializes this CourseTestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {String id,
      String description,
      int taskCount,
      String? imageUrl,
      int taskCompleted,
      double progressPercentage,
      TestState testState});
}

/// @nodoc
class _$CourseTestModelCopyWithImpl<$Res, $Val extends CourseTestModel>
    implements $CourseTestModelCopyWith<$Res> {
  _$CourseTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? taskCount = null,
    Object? imageUrl = freezed,
    Object? taskCompleted = null,
    Object? progressPercentage = null,
    Object? testState = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskCount: null == taskCount
          ? _value.taskCount
          : taskCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      taskCompleted: null == taskCompleted
          ? _value.taskCompleted
          : taskCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      testState: null == testState
          ? _value.testState
          : testState // ignore: cast_nullable_to_non_nullable
              as TestState,
    ) as $Val);
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
      {String id,
      String description,
      int taskCount,
      String? imageUrl,
      int taskCompleted,
      double progressPercentage,
      TestState testState});
}

/// @nodoc
class __$$CourseTestModelImplCopyWithImpl<$Res>
    extends _$CourseTestModelCopyWithImpl<$Res, _$CourseTestModelImpl>
    implements _$$CourseTestModelImplCopyWith<$Res> {
  __$$CourseTestModelImplCopyWithImpl(
      _$CourseTestModelImpl _value, $Res Function(_$CourseTestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? taskCount = null,
    Object? imageUrl = freezed,
    Object? taskCompleted = null,
    Object? progressPercentage = null,
    Object? testState = null,
  }) {
    return _then(_$CourseTestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskCount: null == taskCount
          ? _value.taskCount
          : taskCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      taskCompleted: null == taskCompleted
          ? _value.taskCompleted
          : taskCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      testState: null == testState
          ? _value.testState
          : testState // ignore: cast_nullable_to_non_nullable
              as TestState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTestModelImpl implements _CourseTestModel {
  const _$CourseTestModelImpl(
      {required this.id,
      required this.description,
      required this.taskCount,
      this.imageUrl,
      required this.taskCompleted,
      required this.progressPercentage,
      required this.testState});

  factory _$CourseTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTestModelImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final int taskCount;
  @override
  final String? imageUrl;
  @override
  final int taskCompleted;
  @override
  final double progressPercentage;
  @override
  final TestState testState;

  @override
  String toString() {
    return 'CourseTestModel(id: $id, description: $description, taskCount: $taskCount, imageUrl: $imageUrl, taskCompleted: $taskCompleted, progressPercentage: $progressPercentage, testState: $testState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskCount, taskCount) ||
                other.taskCount == taskCount) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.taskCompleted, taskCompleted) ||
                other.taskCompleted == taskCompleted) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.testState, testState) ||
                other.testState == testState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, taskCount,
      imageUrl, taskCompleted, progressPercentage, testState);

  /// Create a copy of CourseTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestModelImplCopyWith<_$CourseTestModelImpl> get copyWith =>
      __$$CourseTestModelImplCopyWithImpl<_$CourseTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTestModelImplToJson(
      this,
    );
  }
}

abstract class _CourseTestModel implements CourseTestModel {
  const factory _CourseTestModel(
      {required final String id,
      required final String description,
      required final int taskCount,
      final String? imageUrl,
      required final int taskCompleted,
      required final double progressPercentage,
      required final TestState testState}) = _$CourseTestModelImpl;

  factory _CourseTestModel.fromJson(Map<String, dynamic> json) =
      _$CourseTestModelImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  int get taskCount;
  @override
  String? get imageUrl;
  @override
  int get taskCompleted;
  @override
  double get progressPercentage;
  @override
  TestState get testState;

  /// Create a copy of CourseTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTestModelImplCopyWith<_$CourseTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FullCourseModel _$FullCourseModelFromJson(Map<String, dynamic> json) {
  return _FullCourseModel.fromJson(json);
}

/// @nodoc
mixin _$FullCourseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get maxPoints => throw _privateConstructorUsedError;
  int get currentPoints => throw _privateConstructorUsedError;
  double get progressPercentage => throw _privateConstructorUsedError;

  /// Serializes this FullCourseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FullCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FullCourseModelCopyWith<FullCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullCourseModelCopyWith<$Res> {
  factory $FullCourseModelCopyWith(
          FullCourseModel value, $Res Function(FullCourseModel) then) =
      _$FullCourseModelCopyWithImpl<$Res, FullCourseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String fullDescription,
      String? imageUrl,
      int maxPoints,
      int currentPoints,
      double progressPercentage});
}

/// @nodoc
class _$FullCourseModelCopyWithImpl<$Res, $Val extends FullCourseModel>
    implements $FullCourseModelCopyWith<$Res> {
  _$FullCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FullCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? fullDescription = null,
    Object? imageUrl = freezed,
    Object? maxPoints = null,
    Object? currentPoints = null,
    Object? progressPercentage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPoints: null == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int,
      currentPoints: null == currentPoints
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FullCourseModelImplCopyWith<$Res>
    implements $FullCourseModelCopyWith<$Res> {
  factory _$$FullCourseModelImplCopyWith(_$FullCourseModelImpl value,
          $Res Function(_$FullCourseModelImpl) then) =
      __$$FullCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String fullDescription,
      String? imageUrl,
      int maxPoints,
      int currentPoints,
      double progressPercentage});
}

/// @nodoc
class __$$FullCourseModelImplCopyWithImpl<$Res>
    extends _$FullCourseModelCopyWithImpl<$Res, _$FullCourseModelImpl>
    implements _$$FullCourseModelImplCopyWith<$Res> {
  __$$FullCourseModelImplCopyWithImpl(
      _$FullCourseModelImpl _value, $Res Function(_$FullCourseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FullCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? fullDescription = null,
    Object? imageUrl = freezed,
    Object? maxPoints = null,
    Object? currentPoints = null,
    Object? progressPercentage = null,
  }) {
    return _then(_$FullCourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPoints: null == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int,
      currentPoints: null == currentPoints
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullCourseModelImpl implements _FullCourseModel {
  const _$FullCourseModelImpl(
      {required this.id,
      required this.title,
      required final List<String> tags,
      required this.fullDescription,
      this.imageUrl,
      required this.maxPoints,
      required this.currentPoints,
      required this.progressPercentage})
      : _tags = tags;

  factory _$FullCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullCourseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String fullDescription;
  @override
  final String? imageUrl;
  @override
  final int maxPoints;
  @override
  final int currentPoints;
  @override
  final double progressPercentage;

  @override
  String toString() {
    return 'FullCourseModel(id: $id, title: $title, tags: $tags, fullDescription: $fullDescription, imageUrl: $imageUrl, maxPoints: $maxPoints, currentPoints: $currentPoints, progressPercentage: $progressPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints) &&
            (identical(other.currentPoints, currentPoints) ||
                other.currentPoints == currentPoints) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_tags),
      fullDescription,
      imageUrl,
      maxPoints,
      currentPoints,
      progressPercentage);

  /// Create a copy of FullCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FullCourseModelImplCopyWith<_$FullCourseModelImpl> get copyWith =>
      __$$FullCourseModelImplCopyWithImpl<_$FullCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullCourseModelImplToJson(
      this,
    );
  }
}

abstract class _FullCourseModel implements FullCourseModel {
  const factory _FullCourseModel(
      {required final String id,
      required final String title,
      required final List<String> tags,
      required final String fullDescription,
      final String? imageUrl,
      required final int maxPoints,
      required final int currentPoints,
      required final double progressPercentage}) = _$FullCourseModelImpl;

  factory _FullCourseModel.fromJson(Map<String, dynamic> json) =
      _$FullCourseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get tags;
  @override
  String get fullDescription;
  @override
  String? get imageUrl;
  @override
  int get maxPoints;
  @override
  int get currentPoints;
  @override
  double get progressPercentage;

  /// Create a copy of FullCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FullCourseModelImplCopyWith<_$FullCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

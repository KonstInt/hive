// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestMeta _$ApiCourseTestMetaFromJson(Map<String, dynamic> json) {
  return _ApiCourseTestMeta.fromJson(json);
}

/// @nodoc
mixin _$ApiCourseTestMeta {
  Map<String, String> get metaAnswers => throw _privateConstructorUsedError;
  bool get inProgress => throw _privateConstructorUsedError;
  double get currentScores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCourseTestMetaCopyWith<ApiCourseTestMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestMetaCopyWith<$Res> {
  factory $ApiCourseTestMetaCopyWith(
          ApiCourseTestMeta value, $Res Function(ApiCourseTestMeta) then) =
      _$ApiCourseTestMetaCopyWithImpl<$Res, ApiCourseTestMeta>;
  @useResult
  $Res call(
      {Map<String, String> metaAnswers, bool inProgress, double currentScores});
}

/// @nodoc
class _$ApiCourseTestMetaCopyWithImpl<$Res, $Val extends ApiCourseTestMeta>
    implements $ApiCourseTestMetaCopyWith<$Res> {
  _$ApiCourseTestMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaAnswers = null,
    Object? inProgress = null,
    Object? currentScores = null,
  }) {
    return _then(_value.copyWith(
      metaAnswers: null == metaAnswers
          ? _value.metaAnswers
          : metaAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      currentScores: null == currentScores
          ? _value.currentScores
          : currentScores // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiCourseTestMetaImplCopyWith<$Res>
    implements $ApiCourseTestMetaCopyWith<$Res> {
  factory _$$ApiCourseTestMetaImplCopyWith(_$ApiCourseTestMetaImpl value,
          $Res Function(_$ApiCourseTestMetaImpl) then) =
      __$$ApiCourseTestMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> metaAnswers, bool inProgress, double currentScores});
}

/// @nodoc
class __$$ApiCourseTestMetaImplCopyWithImpl<$Res>
    extends _$ApiCourseTestMetaCopyWithImpl<$Res, _$ApiCourseTestMetaImpl>
    implements _$$ApiCourseTestMetaImplCopyWith<$Res> {
  __$$ApiCourseTestMetaImplCopyWithImpl(_$ApiCourseTestMetaImpl _value,
      $Res Function(_$ApiCourseTestMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaAnswers = null,
    Object? inProgress = null,
    Object? currentScores = null,
  }) {
    return _then(_$ApiCourseTestMetaImpl(
      metaAnswers: null == metaAnswers
          ? _value._metaAnswers
          : metaAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      currentScores: null == currentScores
          ? _value.currentScores
          : currentScores // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestMetaImpl implements _ApiCourseTestMeta {
  _$ApiCourseTestMetaImpl(
      {required final Map<String, String> metaAnswers,
      required this.inProgress,
      required this.currentScores})
      : _metaAnswers = metaAnswers;

  factory _$ApiCourseTestMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCourseTestMetaImplFromJson(json);

  final Map<String, String> _metaAnswers;
  @override
  Map<String, String> get metaAnswers {
    if (_metaAnswers is EqualUnmodifiableMapView) return _metaAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metaAnswers);
  }

  @override
  final bool inProgress;
  @override
  final double currentScores;

  @override
  String toString() {
    return 'ApiCourseTestMeta(metaAnswers: $metaAnswers, inProgress: $inProgress, currentScores: $currentScores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestMetaImpl &&
            const DeepCollectionEquality()
                .equals(other._metaAnswers, _metaAnswers) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.currentScores, currentScores) ||
                other.currentScores == currentScores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_metaAnswers),
      inProgress,
      currentScores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestMetaImplCopyWith<_$ApiCourseTestMetaImpl> get copyWith =>
      __$$ApiCourseTestMetaImplCopyWithImpl<_$ApiCourseTestMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestMetaImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestMeta implements ApiCourseTestMeta {
  factory _ApiCourseTestMeta(
      {required final Map<String, String> metaAnswers,
      required final bool inProgress,
      required final double currentScores}) = _$ApiCourseTestMetaImpl;

  factory _ApiCourseTestMeta.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestMetaImpl.fromJson;

  @override
  Map<String, String> get metaAnswers;
  @override
  bool get inProgress;
  @override
  double get currentScores;
  @override
  @JsonKey(ignore: true)
  _$$ApiCourseTestMetaImplCopyWith<_$ApiCourseTestMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestMeta {
  Map<String, String> get metaAnswers => throw _privateConstructorUsedError;
  bool get inProgress => throw _privateConstructorUsedError;
  double get currentScores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseTestMetaCopyWith<CourseTestMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestMetaCopyWith<$Res> {
  factory $CourseTestMetaCopyWith(
          CourseTestMeta value, $Res Function(CourseTestMeta) then) =
      _$CourseTestMetaCopyWithImpl<$Res, CourseTestMeta>;
  @useResult
  $Res call(
      {Map<String, String> metaAnswers, bool inProgress, double currentScores});
}

/// @nodoc
class _$CourseTestMetaCopyWithImpl<$Res, $Val extends CourseTestMeta>
    implements $CourseTestMetaCopyWith<$Res> {
  _$CourseTestMetaCopyWithImpl(this._value, this._then);

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
abstract class _$$CourseTestMetaImplCopyWith<$Res>
    implements $CourseTestMetaCopyWith<$Res> {
  factory _$$CourseTestMetaImplCopyWith(_$CourseTestMetaImpl value,
          $Res Function(_$CourseTestMetaImpl) then) =
      __$$CourseTestMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> metaAnswers, bool inProgress, double currentScores});
}

/// @nodoc
class __$$CourseTestMetaImplCopyWithImpl<$Res>
    extends _$CourseTestMetaCopyWithImpl<$Res, _$CourseTestMetaImpl>
    implements _$$CourseTestMetaImplCopyWith<$Res> {
  __$$CourseTestMetaImplCopyWithImpl(
      _$CourseTestMetaImpl _value, $Res Function(_$CourseTestMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaAnswers = null,
    Object? inProgress = null,
    Object? currentScores = null,
  }) {
    return _then(_$CourseTestMetaImpl(
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

class _$CourseTestMetaImpl implements _CourseTestMeta {
  _$CourseTestMetaImpl(
      {required final Map<String, String> metaAnswers,
      required this.inProgress,
      required this.currentScores})
      : _metaAnswers = metaAnswers;

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
    return 'CourseTestMeta(metaAnswers: $metaAnswers, inProgress: $inProgress, currentScores: $currentScores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestMetaImpl &&
            const DeepCollectionEquality()
                .equals(other._metaAnswers, _metaAnswers) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.currentScores, currentScores) ||
                other.currentScores == currentScores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_metaAnswers),
      inProgress,
      currentScores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestMetaImplCopyWith<_$CourseTestMetaImpl> get copyWith =>
      __$$CourseTestMetaImplCopyWithImpl<_$CourseTestMetaImpl>(
          this, _$identity);
}

abstract class _CourseTestMeta implements CourseTestMeta {
  factory _CourseTestMeta(
      {required final Map<String, String> metaAnswers,
      required final bool inProgress,
      required final double currentScores}) = _$CourseTestMetaImpl;

  @override
  Map<String, String> get metaAnswers;
  @override
  bool get inProgress;
  @override
  double get currentScores;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestMetaImplCopyWith<_$CourseTestMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

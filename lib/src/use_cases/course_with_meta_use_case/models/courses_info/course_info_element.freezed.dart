// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_info_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseInfoElement {
  String get courseID => throw _privateConstructorUsedError;
  String get courseMetaInfoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseInfoElementCopyWith<CourseInfoElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseInfoElementCopyWith<$Res> {
  factory $CourseInfoElementCopyWith(
          CourseInfoElement value, $Res Function(CourseInfoElement) then) =
      _$CourseInfoElementCopyWithImpl<$Res, CourseInfoElement>;
  @useResult
  $Res call({String courseID, String courseMetaInfoId});
}

/// @nodoc
class _$CourseInfoElementCopyWithImpl<$Res, $Val extends CourseInfoElement>
    implements $CourseInfoElementCopyWith<$Res> {
  _$CourseInfoElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseID = null,
    Object? courseMetaInfoId = null,
  }) {
    return _then(_value.copyWith(
      courseID: null == courseID
          ? _value.courseID
          : courseID // ignore: cast_nullable_to_non_nullable
              as String,
      courseMetaInfoId: null == courseMetaInfoId
          ? _value.courseMetaInfoId
          : courseMetaInfoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseInfoElementImplCopyWith<$Res>
    implements $CourseInfoElementCopyWith<$Res> {
  factory _$$CourseInfoElementImplCopyWith(_$CourseInfoElementImpl value,
          $Res Function(_$CourseInfoElementImpl) then) =
      __$$CourseInfoElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String courseID, String courseMetaInfoId});
}

/// @nodoc
class __$$CourseInfoElementImplCopyWithImpl<$Res>
    extends _$CourseInfoElementCopyWithImpl<$Res, _$CourseInfoElementImpl>
    implements _$$CourseInfoElementImplCopyWith<$Res> {
  __$$CourseInfoElementImplCopyWithImpl(_$CourseInfoElementImpl _value,
      $Res Function(_$CourseInfoElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseID = null,
    Object? courseMetaInfoId = null,
  }) {
    return _then(_$CourseInfoElementImpl(
      courseID: null == courseID
          ? _value.courseID
          : courseID // ignore: cast_nullable_to_non_nullable
              as String,
      courseMetaInfoId: null == courseMetaInfoId
          ? _value.courseMetaInfoId
          : courseMetaInfoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseInfoElementImpl implements _CourseInfoElement {
  _$CourseInfoElementImpl(
      {required this.courseID, required this.courseMetaInfoId});

  @override
  final String courseID;
  @override
  final String courseMetaInfoId;

  @override
  String toString() {
    return 'CourseInfoElement(courseID: $courseID, courseMetaInfoId: $courseMetaInfoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseInfoElementImpl &&
            (identical(other.courseID, courseID) ||
                other.courseID == courseID) &&
            (identical(other.courseMetaInfoId, courseMetaInfoId) ||
                other.courseMetaInfoId == courseMetaInfoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseID, courseMetaInfoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseInfoElementImplCopyWith<_$CourseInfoElementImpl> get copyWith =>
      __$$CourseInfoElementImplCopyWithImpl<_$CourseInfoElementImpl>(
          this, _$identity);
}

abstract class _CourseInfoElement implements CourseInfoElement {
  factory _CourseInfoElement(
      {required final String courseID,
      required final String courseMetaInfoId}) = _$CourseInfoElementImpl;

  @override
  String get courseID;
  @override
  String get courseMetaInfoId;
  @override
  @JsonKey(ignore: true)
  _$$CourseInfoElementImplCopyWith<_$CourseInfoElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

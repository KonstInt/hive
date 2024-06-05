// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoursesInfo {
  List<CourseInfoElement> get coursesInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesInfoCopyWith<CoursesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesInfoCopyWith<$Res> {
  factory $CoursesInfoCopyWith(
          CoursesInfo value, $Res Function(CoursesInfo) then) =
      _$CoursesInfoCopyWithImpl<$Res, CoursesInfo>;
  @useResult
  $Res call({List<CourseInfoElement> coursesInfo});
}

/// @nodoc
class _$CoursesInfoCopyWithImpl<$Res, $Val extends CoursesInfo>
    implements $CoursesInfoCopyWith<$Res> {
  _$CoursesInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesInfo = null,
  }) {
    return _then(_value.copyWith(
      coursesInfo: null == coursesInfo
          ? _value.coursesInfo
          : coursesInfo // ignore: cast_nullable_to_non_nullable
              as List<CourseInfoElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesInfoImplCopyWith<$Res>
    implements $CoursesInfoCopyWith<$Res> {
  factory _$$CoursesInfoImplCopyWith(
          _$CoursesInfoImpl value, $Res Function(_$CoursesInfoImpl) then) =
      __$$CoursesInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseInfoElement> coursesInfo});
}

/// @nodoc
class __$$CoursesInfoImplCopyWithImpl<$Res>
    extends _$CoursesInfoCopyWithImpl<$Res, _$CoursesInfoImpl>
    implements _$$CoursesInfoImplCopyWith<$Res> {
  __$$CoursesInfoImplCopyWithImpl(
      _$CoursesInfoImpl _value, $Res Function(_$CoursesInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesInfo = null,
  }) {
    return _then(_$CoursesInfoImpl(
      coursesInfo: null == coursesInfo
          ? _value._coursesInfo
          : coursesInfo // ignore: cast_nullable_to_non_nullable
              as List<CourseInfoElement>,
    ));
  }
}

/// @nodoc

class _$CoursesInfoImpl implements _CoursesInfo {
  _$CoursesInfoImpl({required final List<CourseInfoElement> coursesInfo})
      : _coursesInfo = coursesInfo;

  final List<CourseInfoElement> _coursesInfo;
  @override
  List<CourseInfoElement> get coursesInfo {
    if (_coursesInfo is EqualUnmodifiableListView) return _coursesInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesInfo);
  }

  @override
  String toString() {
    return 'CoursesInfo(coursesInfo: $coursesInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._coursesInfo, _coursesInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coursesInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesInfoImplCopyWith<_$CoursesInfoImpl> get copyWith =>
      __$$CoursesInfoImplCopyWithImpl<_$CoursesInfoImpl>(this, _$identity);
}

abstract class _CoursesInfo implements CoursesInfo {
  factory _CoursesInfo({required final List<CourseInfoElement> coursesInfo}) =
      _$CoursesInfoImpl;

  @override
  List<CourseInfoElement> get coursesInfo;
  @override
  @JsonKey(ignore: true)
  _$$CoursesInfoImplCopyWith<_$CoursesInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

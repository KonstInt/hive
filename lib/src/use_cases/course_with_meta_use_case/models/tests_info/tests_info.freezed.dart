// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tests_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestsInfo {
  List<String> get tests => throw _privateConstructorUsedError;
  Map<String, String> get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestsInfoCopyWith<TestsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestsInfoCopyWith<$Res> {
  factory $TestsInfoCopyWith(TestsInfo value, $Res Function(TestsInfo) then) =
      _$TestsInfoCopyWithImpl<$Res, TestsInfo>;
  @useResult
  $Res call({List<String> tests, Map<String, String> meta});
}

/// @nodoc
class _$TestsInfoCopyWithImpl<$Res, $Val extends TestsInfo>
    implements $TestsInfoCopyWith<$Res> {
  _$TestsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      tests: null == tests
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestsInfoImplCopyWith<$Res>
    implements $TestsInfoCopyWith<$Res> {
  factory _$$TestsInfoImplCopyWith(
          _$TestsInfoImpl value, $Res Function(_$TestsInfoImpl) then) =
      __$$TestsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tests, Map<String, String> meta});
}

/// @nodoc
class __$$TestsInfoImplCopyWithImpl<$Res>
    extends _$TestsInfoCopyWithImpl<$Res, _$TestsInfoImpl>
    implements _$$TestsInfoImplCopyWith<$Res> {
  __$$TestsInfoImplCopyWithImpl(
      _$TestsInfoImpl _value, $Res Function(_$TestsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
    Object? meta = null,
  }) {
    return _then(_$TestsInfoImpl(
      tests: null == tests
          ? _value._tests
          : tests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$TestsInfoImpl implements _TestsInfo {
  _$TestsInfoImpl(
      {required final List<String> tests,
      required final Map<String, String> meta})
      : _tests = tests,
        _meta = meta;

  final List<String> _tests;
  @override
  List<String> get tests {
    if (_tests is EqualUnmodifiableListView) return _tests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tests);
  }

  final Map<String, String> _meta;
  @override
  Map<String, String> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  @override
  String toString() {
    return 'TestsInfo(tests: $tests, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestsInfoImpl &&
            const DeepCollectionEquality().equals(other._tests, _tests) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tests),
      const DeepCollectionEquality().hash(_meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestsInfoImplCopyWith<_$TestsInfoImpl> get copyWith =>
      __$$TestsInfoImplCopyWithImpl<_$TestsInfoImpl>(this, _$identity);
}

abstract class _TestsInfo implements TestsInfo {
  factory _TestsInfo(
      {required final List<String> tests,
      required final Map<String, String> meta}) = _$TestsInfoImpl;

  @override
  List<String> get tests;
  @override
  Map<String, String> get meta;
  @override
  @JsonKey(ignore: true)
  _$$TestsInfoImplCopyWith<_$TestsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

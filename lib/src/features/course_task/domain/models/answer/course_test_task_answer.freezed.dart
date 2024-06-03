// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_task_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestTaskAnswer {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_CourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskAnswerFromImage value) fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskAnswerFromImage value)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestTaskAnswerCopyWith<$Res> {
  factory $CourseTestTaskAnswerCopyWith(CourseTestTaskAnswer value,
          $Res Function(CourseTestTaskAnswer) then) =
      _$CourseTestTaskAnswerCopyWithImpl<$Res, CourseTestTaskAnswer>;
}

/// @nodoc
class _$CourseTestTaskAnswerCopyWithImpl<$Res,
        $Val extends CourseTestTaskAnswer>
    implements $CourseTestTaskAnswerCopyWith<$Res> {
  _$CourseTestTaskAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseTestTaskAnswerFromTextImplCopyWith<$Res> {
  factory _$$CourseTestTaskAnswerFromTextImplCopyWith(
          _$CourseTestTaskAnswerFromTextImpl value,
          $Res Function(_$CourseTestTaskAnswerFromTextImpl) then) =
      __$$CourseTestTaskAnswerFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? imageUrl});
}

/// @nodoc
class __$$CourseTestTaskAnswerFromTextImplCopyWithImpl<$Res>
    extends _$CourseTestTaskAnswerCopyWithImpl<$Res,
        _$CourseTestTaskAnswerFromTextImpl>
    implements _$$CourseTestTaskAnswerFromTextImplCopyWith<$Res> {
  __$$CourseTestTaskAnswerFromTextImplCopyWithImpl(
      _$CourseTestTaskAnswerFromTextImpl _value,
      $Res Function(_$CourseTestTaskAnswerFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CourseTestTaskAnswerFromTextImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskAnswerFromTextImpl
    implements _CourseTestTaskAnswerFromText {
  _$CourseTestTaskAnswerFromTextImpl({required this.text, this.imageUrl});

  @override
  final String text;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CourseTestTaskAnswer.fromText(text: $text, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskAnswerFromTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskAnswerFromTextImplCopyWith<
          _$CourseTestTaskAnswerFromTextImpl>
      get copyWith => __$$CourseTestTaskAnswerFromTextImplCopyWithImpl<
          _$CourseTestTaskAnswerFromTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromText(text, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromText?.call(text, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(text, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_CourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskAnswerFromImage value) fromImage,
  }) {
    return fromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskAnswerFromText implements CourseTestTaskAnswer {
  factory _CourseTestTaskAnswerFromText(
      {required final String text,
      final String? imageUrl}) = _$CourseTestTaskAnswerFromTextImpl;

  String get text;
  String? get imageUrl;
  @JsonKey(ignore: true)
  _$$CourseTestTaskAnswerFromTextImplCopyWith<
          _$CourseTestTaskAnswerFromTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskAnswerFromHTMLImplCopyWith<$Res> {
  factory _$$CourseTestTaskAnswerFromHTMLImplCopyWith(
          _$CourseTestTaskAnswerFromHTMLImpl value,
          $Res Function(_$CourseTestTaskAnswerFromHTMLImpl) then) =
      __$$CourseTestTaskAnswerFromHTMLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String htmlCode});
}

/// @nodoc
class __$$CourseTestTaskAnswerFromHTMLImplCopyWithImpl<$Res>
    extends _$CourseTestTaskAnswerCopyWithImpl<$Res,
        _$CourseTestTaskAnswerFromHTMLImpl>
    implements _$$CourseTestTaskAnswerFromHTMLImplCopyWith<$Res> {
  __$$CourseTestTaskAnswerFromHTMLImplCopyWithImpl(
      _$CourseTestTaskAnswerFromHTMLImpl _value,
      $Res Function(_$CourseTestTaskAnswerFromHTMLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlCode = null,
  }) {
    return _then(_$CourseTestTaskAnswerFromHTMLImpl(
      htmlCode: null == htmlCode
          ? _value.htmlCode
          : htmlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskAnswerFromHTMLImpl
    implements _CourseTestTaskAnswerFromHTML {
  _$CourseTestTaskAnswerFromHTMLImpl({required this.htmlCode});

  @override
  final String htmlCode;

  @override
  String toString() {
    return 'CourseTestTaskAnswer.fromHTML(htmlCode: $htmlCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskAnswerFromHTMLImpl &&
            (identical(other.htmlCode, htmlCode) ||
                other.htmlCode == htmlCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, htmlCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskAnswerFromHTMLImplCopyWith<
          _$CourseTestTaskAnswerFromHTMLImpl>
      get copyWith => __$$CourseTestTaskAnswerFromHTMLImplCopyWithImpl<
          _$CourseTestTaskAnswerFromHTMLImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromHTML(htmlCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromHTML?.call(htmlCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) {
    if (fromHTML != null) {
      return fromHTML(htmlCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_CourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskAnswerFromImage value) fromImage,
  }) {
    return fromHTML(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromHTML?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromHTML != null) {
      return fromHTML(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskAnswerFromHTML implements CourseTestTaskAnswer {
  factory _CourseTestTaskAnswerFromHTML({required final String htmlCode}) =
      _$CourseTestTaskAnswerFromHTMLImpl;

  String get htmlCode;
  @JsonKey(ignore: true)
  _$$CourseTestTaskAnswerFromHTMLImplCopyWith<
          _$CourseTestTaskAnswerFromHTMLImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskAnswerFromImageImplCopyWith<$Res> {
  factory _$$CourseTestTaskAnswerFromImageImplCopyWith(
          _$CourseTestTaskAnswerFromImageImpl value,
          $Res Function(_$CourseTestTaskAnswerFromImageImpl) then) =
      __$$CourseTestTaskAnswerFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$CourseTestTaskAnswerFromImageImplCopyWithImpl<$Res>
    extends _$CourseTestTaskAnswerCopyWithImpl<$Res,
        _$CourseTestTaskAnswerFromImageImpl>
    implements _$$CourseTestTaskAnswerFromImageImplCopyWith<$Res> {
  __$$CourseTestTaskAnswerFromImageImplCopyWithImpl(
      _$CourseTestTaskAnswerFromImageImpl _value,
      $Res Function(_$CourseTestTaskAnswerFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$CourseTestTaskAnswerFromImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskAnswerFromImageImpl
    implements _CourseTestTaskAnswerFromImage {
  _$CourseTestTaskAnswerFromImageImpl({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CourseTestTaskAnswer.fromImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskAnswerFromImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskAnswerFromImageImplCopyWith<
          _$CourseTestTaskAnswerFromImageImpl>
      get copyWith => __$$CourseTestTaskAnswerFromImageImplCopyWithImpl<
          _$CourseTestTaskAnswerFromImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromImage(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromImage?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) {
    if (fromImage != null) {
      return fromImage(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_CourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskAnswerFromImage value) fromImage,
  }) {
    return fromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_CourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromImage != null) {
      return fromImage(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskAnswerFromImage implements CourseTestTaskAnswer {
  factory _CourseTestTaskAnswerFromImage({required final String imageUrl}) =
      _$CourseTestTaskAnswerFromImageImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$CourseTestTaskAnswerFromImageImplCopyWith<
          _$CourseTestTaskAnswerFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_task_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestTaskQuestion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String question, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String question, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String question, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuestionFromText value) fromText,
    required TResult Function(_CourseTestTaskQuestionFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskQuestionFromImage value) fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskQuestionFromImage value)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestTaskQuestionCopyWith<$Res> {
  factory $CourseTestTaskQuestionCopyWith(CourseTestTaskQuestion value,
          $Res Function(CourseTestTaskQuestion) then) =
      _$CourseTestTaskQuestionCopyWithImpl<$Res, CourseTestTaskQuestion>;
}

/// @nodoc
class _$CourseTestTaskQuestionCopyWithImpl<$Res,
        $Val extends CourseTestTaskQuestion>
    implements $CourseTestTaskQuestionCopyWith<$Res> {
  _$CourseTestTaskQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseTestTaskQuestionFromTextImplCopyWith<$Res> {
  factory _$$CourseTestTaskQuestionFromTextImplCopyWith(
          _$CourseTestTaskQuestionFromTextImpl value,
          $Res Function(_$CourseTestTaskQuestionFromTextImpl) then) =
      __$$CourseTestTaskQuestionFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String question, String? imageUrl});
}

/// @nodoc
class __$$CourseTestTaskQuestionFromTextImplCopyWithImpl<$Res>
    extends _$CourseTestTaskQuestionCopyWithImpl<$Res,
        _$CourseTestTaskQuestionFromTextImpl>
    implements _$$CourseTestTaskQuestionFromTextImplCopyWith<$Res> {
  __$$CourseTestTaskQuestionFromTextImplCopyWithImpl(
      _$CourseTestTaskQuestionFromTextImpl _value,
      $Res Function(_$CourseTestTaskQuestionFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CourseTestTaskQuestionFromTextImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskQuestionFromTextImpl
    implements _CourseTestTaskQuestionFromText {
  _$CourseTestTaskQuestionFromTextImpl({required this.question, this.imageUrl});

  @override
  final String question;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CourseTestTaskQuestion.fromText(question: $question, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskQuestionFromTextImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskQuestionFromTextImplCopyWith<
          _$CourseTestTaskQuestionFromTextImpl>
      get copyWith => __$$CourseTestTaskQuestionFromTextImplCopyWithImpl<
          _$CourseTestTaskQuestionFromTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String question, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromText(question, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String question, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromText?.call(question, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String question, String? imageUrl)? fromText,
    TResult Function(String htmlCode)? fromHTML,
    TResult Function(String imageUrl)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(question, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuestionFromText value) fromText,
    required TResult Function(_CourseTestTaskQuestionFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskQuestionFromImage value) fromImage,
  }) {
    return fromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskQuestionFromText
    implements CourseTestTaskQuestion {
  factory _CourseTestTaskQuestionFromText(
      {required final String question,
      final String? imageUrl}) = _$CourseTestTaskQuestionFromTextImpl;

  String get question;
  String? get imageUrl;
  @JsonKey(ignore: true)
  _$$CourseTestTaskQuestionFromTextImplCopyWith<
          _$CourseTestTaskQuestionFromTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskQuestionFromHTMLImplCopyWith<$Res> {
  factory _$$CourseTestTaskQuestionFromHTMLImplCopyWith(
          _$CourseTestTaskQuestionFromHTMLImpl value,
          $Res Function(_$CourseTestTaskQuestionFromHTMLImpl) then) =
      __$$CourseTestTaskQuestionFromHTMLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String htmlCode});
}

/// @nodoc
class __$$CourseTestTaskQuestionFromHTMLImplCopyWithImpl<$Res>
    extends _$CourseTestTaskQuestionCopyWithImpl<$Res,
        _$CourseTestTaskQuestionFromHTMLImpl>
    implements _$$CourseTestTaskQuestionFromHTMLImplCopyWith<$Res> {
  __$$CourseTestTaskQuestionFromHTMLImplCopyWithImpl(
      _$CourseTestTaskQuestionFromHTMLImpl _value,
      $Res Function(_$CourseTestTaskQuestionFromHTMLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlCode = null,
  }) {
    return _then(_$CourseTestTaskQuestionFromHTMLImpl(
      htmlCode: null == htmlCode
          ? _value.htmlCode
          : htmlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskQuestionFromHTMLImpl
    implements _CourseTestTaskQuestionFromHTML {
  _$CourseTestTaskQuestionFromHTMLImpl({required this.htmlCode});

  @override
  final String htmlCode;

  @override
  String toString() {
    return 'CourseTestTaskQuestion.fromHTML(htmlCode: $htmlCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskQuestionFromHTMLImpl &&
            (identical(other.htmlCode, htmlCode) ||
                other.htmlCode == htmlCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, htmlCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskQuestionFromHTMLImplCopyWith<
          _$CourseTestTaskQuestionFromHTMLImpl>
      get copyWith => __$$CourseTestTaskQuestionFromHTMLImplCopyWithImpl<
          _$CourseTestTaskQuestionFromHTMLImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String question, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromHTML(htmlCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String question, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromHTML?.call(htmlCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String question, String? imageUrl)? fromText,
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
    required TResult Function(_CourseTestTaskQuestionFromText value) fromText,
    required TResult Function(_CourseTestTaskQuestionFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskQuestionFromImage value) fromImage,
  }) {
    return fromHTML(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromHTML?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromHTML != null) {
      return fromHTML(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskQuestionFromHTML
    implements CourseTestTaskQuestion {
  factory _CourseTestTaskQuestionFromHTML({required final String htmlCode}) =
      _$CourseTestTaskQuestionFromHTMLImpl;

  String get htmlCode;
  @JsonKey(ignore: true)
  _$$CourseTestTaskQuestionFromHTMLImplCopyWith<
          _$CourseTestTaskQuestionFromHTMLImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskQuestionFromImageImplCopyWith<$Res> {
  factory _$$CourseTestTaskQuestionFromImageImplCopyWith(
          _$CourseTestTaskQuestionFromImageImpl value,
          $Res Function(_$CourseTestTaskQuestionFromImageImpl) then) =
      __$$CourseTestTaskQuestionFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$CourseTestTaskQuestionFromImageImplCopyWithImpl<$Res>
    extends _$CourseTestTaskQuestionCopyWithImpl<$Res,
        _$CourseTestTaskQuestionFromImageImpl>
    implements _$$CourseTestTaskQuestionFromImageImplCopyWith<$Res> {
  __$$CourseTestTaskQuestionFromImageImplCopyWithImpl(
      _$CourseTestTaskQuestionFromImageImpl _value,
      $Res Function(_$CourseTestTaskQuestionFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$CourseTestTaskQuestionFromImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskQuestionFromImageImpl
    implements _CourseTestTaskQuestionFromImage {
  _$CourseTestTaskQuestionFromImageImpl({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CourseTestTaskQuestion.fromImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskQuestionFromImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskQuestionFromImageImplCopyWith<
          _$CourseTestTaskQuestionFromImageImpl>
      get copyWith => __$$CourseTestTaskQuestionFromImageImplCopyWithImpl<
          _$CourseTestTaskQuestionFromImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String question, String? imageUrl) fromText,
    required TResult Function(String htmlCode) fromHTML,
    required TResult Function(String imageUrl) fromImage,
  }) {
    return fromImage(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String question, String? imageUrl)? fromText,
    TResult? Function(String htmlCode)? fromHTML,
    TResult? Function(String imageUrl)? fromImage,
  }) {
    return fromImage?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String question, String? imageUrl)? fromText,
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
    required TResult Function(_CourseTestTaskQuestionFromText value) fromText,
    required TResult Function(_CourseTestTaskQuestionFromHTML value) fromHTML,
    required TResult Function(_CourseTestTaskQuestionFromImage value) fromImage,
  }) {
    return fromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_CourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_CourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_CourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromImage != null) {
      return fromImage(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskQuestionFromImage
    implements CourseTestTaskQuestion {
  factory _CourseTestTaskQuestionFromImage({required final String imageUrl}) =
      _$CourseTestTaskQuestionFromImageImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$CourseTestTaskQuestionFromImageImplCopyWith<
          _$CourseTestTaskQuestionFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

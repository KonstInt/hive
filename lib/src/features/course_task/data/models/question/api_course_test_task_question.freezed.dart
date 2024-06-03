// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_task_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestTaskQuestion _$ApiCourseTestTaskQuestionFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fromText':
      return _ApiCourseTestTaskQuestionFromText.fromJson(json);
    case 'fromHTML':
      return _ApiCourseTestTaskQuestionFromHTML.fromJson(json);
    case 'fromImage':
      return _ApiCourseTestTaskQuestionFromImage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ApiCourseTestTaskQuestion',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiCourseTestTaskQuestion {
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
    required TResult Function(_ApiCourseTestTaskQuestionFromText value)
        fromText,
    required TResult Function(_ApiCourseTestTaskQuestionFromHTML value)
        fromHTML,
    required TResult Function(_ApiCourseTestTaskQuestionFromImage value)
        fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestTaskQuestionCopyWith<$Res> {
  factory $ApiCourseTestTaskQuestionCopyWith(ApiCourseTestTaskQuestion value,
          $Res Function(ApiCourseTestTaskQuestion) then) =
      _$ApiCourseTestTaskQuestionCopyWithImpl<$Res, ApiCourseTestTaskQuestion>;
}

/// @nodoc
class _$ApiCourseTestTaskQuestionCopyWithImpl<$Res,
        $Val extends ApiCourseTestTaskQuestion>
    implements $ApiCourseTestTaskQuestionCopyWith<$Res> {
  _$ApiCourseTestTaskQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskQuestionFromTextImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskQuestionFromTextImplCopyWith(
          _$ApiCourseTestTaskQuestionFromTextImpl value,
          $Res Function(_$ApiCourseTestTaskQuestionFromTextImpl) then) =
      __$$ApiCourseTestTaskQuestionFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String question, String? imageUrl});
}

/// @nodoc
class __$$ApiCourseTestTaskQuestionFromTextImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskQuestionCopyWithImpl<$Res,
        _$ApiCourseTestTaskQuestionFromTextImpl>
    implements _$$ApiCourseTestTaskQuestionFromTextImplCopyWith<$Res> {
  __$$ApiCourseTestTaskQuestionFromTextImplCopyWithImpl(
      _$ApiCourseTestTaskQuestionFromTextImpl _value,
      $Res Function(_$ApiCourseTestTaskQuestionFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ApiCourseTestTaskQuestionFromTextImpl(
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
@JsonSerializable()
class _$ApiCourseTestTaskQuestionFromTextImpl
    implements _ApiCourseTestTaskQuestionFromText {
  _$ApiCourseTestTaskQuestionFromTextImpl(
      {required this.question, this.imageUrl, final String? $type})
      : $type = $type ?? 'fromText';

  factory _$ApiCourseTestTaskQuestionFromTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskQuestionFromTextImplFromJson(json);

  @override
  final String question;
  @override
  final String? imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskQuestion.fromText(question: $question, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskQuestionFromTextImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskQuestionFromTextImplCopyWith<
          _$ApiCourseTestTaskQuestionFromTextImpl>
      get copyWith => __$$ApiCourseTestTaskQuestionFromTextImplCopyWithImpl<
          _$ApiCourseTestTaskQuestionFromTextImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskQuestionFromText value)
        fromText,
    required TResult Function(_ApiCourseTestTaskQuestionFromHTML value)
        fromHTML,
    required TResult Function(_ApiCourseTestTaskQuestionFromImage value)
        fromImage,
  }) {
    return fromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskQuestionFromTextImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskQuestionFromText
    implements ApiCourseTestTaskQuestion {
  factory _ApiCourseTestTaskQuestionFromText(
      {required final String question,
      final String? imageUrl}) = _$ApiCourseTestTaskQuestionFromTextImpl;

  factory _ApiCourseTestTaskQuestionFromText.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskQuestionFromTextImpl.fromJson;

  String get question;
  String? get imageUrl;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskQuestionFromTextImplCopyWith<
          _$ApiCourseTestTaskQuestionFromTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskQuestionFromHTMLImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskQuestionFromHTMLImplCopyWith(
          _$ApiCourseTestTaskQuestionFromHTMLImpl value,
          $Res Function(_$ApiCourseTestTaskQuestionFromHTMLImpl) then) =
      __$$ApiCourseTestTaskQuestionFromHTMLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String htmlCode});
}

/// @nodoc
class __$$ApiCourseTestTaskQuestionFromHTMLImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskQuestionCopyWithImpl<$Res,
        _$ApiCourseTestTaskQuestionFromHTMLImpl>
    implements _$$ApiCourseTestTaskQuestionFromHTMLImplCopyWith<$Res> {
  __$$ApiCourseTestTaskQuestionFromHTMLImplCopyWithImpl(
      _$ApiCourseTestTaskQuestionFromHTMLImpl _value,
      $Res Function(_$ApiCourseTestTaskQuestionFromHTMLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlCode = null,
  }) {
    return _then(_$ApiCourseTestTaskQuestionFromHTMLImpl(
      htmlCode: null == htmlCode
          ? _value.htmlCode
          : htmlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskQuestionFromHTMLImpl
    implements _ApiCourseTestTaskQuestionFromHTML {
  _$ApiCourseTestTaskQuestionFromHTMLImpl(
      {required this.htmlCode, final String? $type})
      : $type = $type ?? 'fromHTML';

  factory _$ApiCourseTestTaskQuestionFromHTMLImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskQuestionFromHTMLImplFromJson(json);

  @override
  final String htmlCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskQuestion.fromHTML(htmlCode: $htmlCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskQuestionFromHTMLImpl &&
            (identical(other.htmlCode, htmlCode) ||
                other.htmlCode == htmlCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, htmlCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskQuestionFromHTMLImplCopyWith<
          _$ApiCourseTestTaskQuestionFromHTMLImpl>
      get copyWith => __$$ApiCourseTestTaskQuestionFromHTMLImplCopyWithImpl<
          _$ApiCourseTestTaskQuestionFromHTMLImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskQuestionFromText value)
        fromText,
    required TResult Function(_ApiCourseTestTaskQuestionFromHTML value)
        fromHTML,
    required TResult Function(_ApiCourseTestTaskQuestionFromImage value)
        fromImage,
  }) {
    return fromHTML(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromHTML?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromHTML != null) {
      return fromHTML(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskQuestionFromHTMLImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskQuestionFromHTML
    implements ApiCourseTestTaskQuestion {
  factory _ApiCourseTestTaskQuestionFromHTML({required final String htmlCode}) =
      _$ApiCourseTestTaskQuestionFromHTMLImpl;

  factory _ApiCourseTestTaskQuestionFromHTML.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskQuestionFromHTMLImpl.fromJson;

  String get htmlCode;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskQuestionFromHTMLImplCopyWith<
          _$ApiCourseTestTaskQuestionFromHTMLImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskQuestionFromImageImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskQuestionFromImageImplCopyWith(
          _$ApiCourseTestTaskQuestionFromImageImpl value,
          $Res Function(_$ApiCourseTestTaskQuestionFromImageImpl) then) =
      __$$ApiCourseTestTaskQuestionFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$ApiCourseTestTaskQuestionFromImageImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskQuestionCopyWithImpl<$Res,
        _$ApiCourseTestTaskQuestionFromImageImpl>
    implements _$$ApiCourseTestTaskQuestionFromImageImplCopyWith<$Res> {
  __$$ApiCourseTestTaskQuestionFromImageImplCopyWithImpl(
      _$ApiCourseTestTaskQuestionFromImageImpl _value,
      $Res Function(_$ApiCourseTestTaskQuestionFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$ApiCourseTestTaskQuestionFromImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskQuestionFromImageImpl
    implements _ApiCourseTestTaskQuestionFromImage {
  _$ApiCourseTestTaskQuestionFromImageImpl(
      {required this.imageUrl, final String? $type})
      : $type = $type ?? 'fromImage';

  factory _$ApiCourseTestTaskQuestionFromImageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskQuestionFromImageImplFromJson(json);

  @override
  final String imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskQuestion.fromImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskQuestionFromImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskQuestionFromImageImplCopyWith<
          _$ApiCourseTestTaskQuestionFromImageImpl>
      get copyWith => __$$ApiCourseTestTaskQuestionFromImageImplCopyWithImpl<
          _$ApiCourseTestTaskQuestionFromImageImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskQuestionFromText value)
        fromText,
    required TResult Function(_ApiCourseTestTaskQuestionFromHTML value)
        fromHTML,
    required TResult Function(_ApiCourseTestTaskQuestionFromImage value)
        fromImage,
  }) {
    return fromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
  }) {
    return fromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuestionFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskQuestionFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskQuestionFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromImage != null) {
      return fromImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskQuestionFromImageImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskQuestionFromImage
    implements ApiCourseTestTaskQuestion {
  factory _ApiCourseTestTaskQuestionFromImage(
          {required final String imageUrl}) =
      _$ApiCourseTestTaskQuestionFromImageImpl;

  factory _ApiCourseTestTaskQuestionFromImage.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskQuestionFromImageImpl.fromJson;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskQuestionFromImageImplCopyWith<
          _$ApiCourseTestTaskQuestionFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

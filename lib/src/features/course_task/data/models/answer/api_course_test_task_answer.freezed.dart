// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_task_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestTaskAnswer _$ApiCourseTestTaskAnswerFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fromText':
      return _ApiCourseTestTaskAnswerFromText.fromJson(json);
    case 'fromHTML':
      return _ApiCourseTestTaskAnswerFromHTML.fromJson(json);
    case 'fromImage':
      return _ApiCourseTestTaskAnswerFromImage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ApiCourseTestTaskAnswer',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiCourseTestTaskAnswer {
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
    required TResult Function(_ApiCourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_ApiCourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_ApiCourseTestTaskAnswerFromImage value)
        fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestTaskAnswerCopyWith<$Res> {
  factory $ApiCourseTestTaskAnswerCopyWith(ApiCourseTestTaskAnswer value,
          $Res Function(ApiCourseTestTaskAnswer) then) =
      _$ApiCourseTestTaskAnswerCopyWithImpl<$Res, ApiCourseTestTaskAnswer>;
}

/// @nodoc
class _$ApiCourseTestTaskAnswerCopyWithImpl<$Res,
        $Val extends ApiCourseTestTaskAnswer>
    implements $ApiCourseTestTaskAnswerCopyWith<$Res> {
  _$ApiCourseTestTaskAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskAnswerFromTextImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskAnswerFromTextImplCopyWith(
          _$ApiCourseTestTaskAnswerFromTextImpl value,
          $Res Function(_$ApiCourseTestTaskAnswerFromTextImpl) then) =
      __$$ApiCourseTestTaskAnswerFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? imageUrl});
}

/// @nodoc
class __$$ApiCourseTestTaskAnswerFromTextImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskAnswerCopyWithImpl<$Res,
        _$ApiCourseTestTaskAnswerFromTextImpl>
    implements _$$ApiCourseTestTaskAnswerFromTextImplCopyWith<$Res> {
  __$$ApiCourseTestTaskAnswerFromTextImplCopyWithImpl(
      _$ApiCourseTestTaskAnswerFromTextImpl _value,
      $Res Function(_$ApiCourseTestTaskAnswerFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ApiCourseTestTaskAnswerFromTextImpl(
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
@JsonSerializable()
class _$ApiCourseTestTaskAnswerFromTextImpl
    implements _ApiCourseTestTaskAnswerFromText {
  _$ApiCourseTestTaskAnswerFromTextImpl(
      {required this.text, this.imageUrl, final String? $type})
      : $type = $type ?? 'fromText';

  factory _$ApiCourseTestTaskAnswerFromTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskAnswerFromTextImplFromJson(json);

  @override
  final String text;
  @override
  final String? imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskAnswer.fromText(text: $text, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskAnswerFromTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskAnswerFromTextImplCopyWith<
          _$ApiCourseTestTaskAnswerFromTextImpl>
      get copyWith => __$$ApiCourseTestTaskAnswerFromTextImplCopyWithImpl<
          _$ApiCourseTestTaskAnswerFromTextImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_ApiCourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_ApiCourseTestTaskAnswerFromImage value)
        fromImage,
  }) {
    return fromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromText != null) {
      return fromText(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskAnswerFromTextImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskAnswerFromText
    implements ApiCourseTestTaskAnswer {
  factory _ApiCourseTestTaskAnswerFromText(
      {required final String text,
      final String? imageUrl}) = _$ApiCourseTestTaskAnswerFromTextImpl;

  factory _ApiCourseTestTaskAnswerFromText.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskAnswerFromTextImpl.fromJson;

  String get text;
  String? get imageUrl;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskAnswerFromTextImplCopyWith<
          _$ApiCourseTestTaskAnswerFromTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskAnswerFromHTMLImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskAnswerFromHTMLImplCopyWith(
          _$ApiCourseTestTaskAnswerFromHTMLImpl value,
          $Res Function(_$ApiCourseTestTaskAnswerFromHTMLImpl) then) =
      __$$ApiCourseTestTaskAnswerFromHTMLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String htmlCode});
}

/// @nodoc
class __$$ApiCourseTestTaskAnswerFromHTMLImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskAnswerCopyWithImpl<$Res,
        _$ApiCourseTestTaskAnswerFromHTMLImpl>
    implements _$$ApiCourseTestTaskAnswerFromHTMLImplCopyWith<$Res> {
  __$$ApiCourseTestTaskAnswerFromHTMLImplCopyWithImpl(
      _$ApiCourseTestTaskAnswerFromHTMLImpl _value,
      $Res Function(_$ApiCourseTestTaskAnswerFromHTMLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlCode = null,
  }) {
    return _then(_$ApiCourseTestTaskAnswerFromHTMLImpl(
      htmlCode: null == htmlCode
          ? _value.htmlCode
          : htmlCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskAnswerFromHTMLImpl
    implements _ApiCourseTestTaskAnswerFromHTML {
  _$ApiCourseTestTaskAnswerFromHTMLImpl(
      {required this.htmlCode, final String? $type})
      : $type = $type ?? 'fromHTML';

  factory _$ApiCourseTestTaskAnswerFromHTMLImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskAnswerFromHTMLImplFromJson(json);

  @override
  final String htmlCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskAnswer.fromHTML(htmlCode: $htmlCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskAnswerFromHTMLImpl &&
            (identical(other.htmlCode, htmlCode) ||
                other.htmlCode == htmlCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, htmlCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskAnswerFromHTMLImplCopyWith<
          _$ApiCourseTestTaskAnswerFromHTMLImpl>
      get copyWith => __$$ApiCourseTestTaskAnswerFromHTMLImplCopyWithImpl<
          _$ApiCourseTestTaskAnswerFromHTMLImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_ApiCourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_ApiCourseTestTaskAnswerFromImage value)
        fromImage,
  }) {
    return fromHTML(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromHTML?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromHTML != null) {
      return fromHTML(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskAnswerFromHTMLImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskAnswerFromHTML
    implements ApiCourseTestTaskAnswer {
  factory _ApiCourseTestTaskAnswerFromHTML({required final String htmlCode}) =
      _$ApiCourseTestTaskAnswerFromHTMLImpl;

  factory _ApiCourseTestTaskAnswerFromHTML.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskAnswerFromHTMLImpl.fromJson;

  String get htmlCode;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskAnswerFromHTMLImplCopyWith<
          _$ApiCourseTestTaskAnswerFromHTMLImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskAnswerFromImageImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskAnswerFromImageImplCopyWith(
          _$ApiCourseTestTaskAnswerFromImageImpl value,
          $Res Function(_$ApiCourseTestTaskAnswerFromImageImpl) then) =
      __$$ApiCourseTestTaskAnswerFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$ApiCourseTestTaskAnswerFromImageImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskAnswerCopyWithImpl<$Res,
        _$ApiCourseTestTaskAnswerFromImageImpl>
    implements _$$ApiCourseTestTaskAnswerFromImageImplCopyWith<$Res> {
  __$$ApiCourseTestTaskAnswerFromImageImplCopyWithImpl(
      _$ApiCourseTestTaskAnswerFromImageImpl _value,
      $Res Function(_$ApiCourseTestTaskAnswerFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$ApiCourseTestTaskAnswerFromImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskAnswerFromImageImpl
    implements _ApiCourseTestTaskAnswerFromImage {
  _$ApiCourseTestTaskAnswerFromImageImpl(
      {required this.imageUrl, final String? $type})
      : $type = $type ?? 'fromImage';

  factory _$ApiCourseTestTaskAnswerFromImageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskAnswerFromImageImplFromJson(json);

  @override
  final String imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskAnswer.fromImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskAnswerFromImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskAnswerFromImageImplCopyWith<
          _$ApiCourseTestTaskAnswerFromImageImpl>
      get copyWith => __$$ApiCourseTestTaskAnswerFromImageImplCopyWithImpl<
          _$ApiCourseTestTaskAnswerFromImageImpl>(this, _$identity);

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
    required TResult Function(_ApiCourseTestTaskAnswerFromText value) fromText,
    required TResult Function(_ApiCourseTestTaskAnswerFromHTML value) fromHTML,
    required TResult Function(_ApiCourseTestTaskAnswerFromImage value)
        fromImage,
  }) {
    return fromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult? Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult? Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
  }) {
    return fromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskAnswerFromText value)? fromText,
    TResult Function(_ApiCourseTestTaskAnswerFromHTML value)? fromHTML,
    TResult Function(_ApiCourseTestTaskAnswerFromImage value)? fromImage,
    required TResult orElse(),
  }) {
    if (fromImage != null) {
      return fromImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskAnswerFromImageImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskAnswerFromImage
    implements ApiCourseTestTaskAnswer {
  factory _ApiCourseTestTaskAnswerFromImage({required final String imageUrl}) =
      _$ApiCourseTestTaskAnswerFromImageImpl;

  factory _ApiCourseTestTaskAnswerFromImage.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskAnswerFromImageImpl.fromJson;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskAnswerFromImageImplCopyWith<
          _$ApiCourseTestTaskAnswerFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

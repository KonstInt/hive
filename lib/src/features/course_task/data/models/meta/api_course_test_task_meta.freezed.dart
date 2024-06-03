// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_task_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestTaskMeta _$ApiCourseTestTaskMetaFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'digitalInk':
      return _ApiCourseTestTaskMetaDigitalInk.fromJson(json);
    case 'quiz':
      return _ApiCourseTestTaskMetaQuiz.fromJson(json);
    case 'quizMultipleChoice':
      return _ApiCourseTestTaskMetaQuizMultipleChoice.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ApiCourseTestTaskMeta',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiCourseTestTaskMeta {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ink, String recognition) digitalInk,
    required TResult Function(ApiCourseTestTaskAnswer answer) quiz,
    required TResult Function(List<ApiCourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ink, String recognition)? digitalInk,
    TResult? Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ink, String recognition)? digitalInk,
    TResult Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskMetaDigitalInk value)
        digitalInk,
    required TResult Function(_ApiCourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestTaskMetaCopyWith<$Res> {
  factory $ApiCourseTestTaskMetaCopyWith(ApiCourseTestTaskMeta value,
          $Res Function(ApiCourseTestTaskMeta) then) =
      _$ApiCourseTestTaskMetaCopyWithImpl<$Res, ApiCourseTestTaskMeta>;
}

/// @nodoc
class _$ApiCourseTestTaskMetaCopyWithImpl<$Res,
        $Val extends ApiCourseTestTaskMeta>
    implements $ApiCourseTestTaskMetaCopyWith<$Res> {
  _$ApiCourseTestTaskMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskMetaDigitalInkImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskMetaDigitalInkImplCopyWith(
          _$ApiCourseTestTaskMetaDigitalInkImpl value,
          $Res Function(_$ApiCourseTestTaskMetaDigitalInkImpl) then) =
      __$$ApiCourseTestTaskMetaDigitalInkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ink, String recognition});
}

/// @nodoc
class __$$ApiCourseTestTaskMetaDigitalInkImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskMetaCopyWithImpl<$Res,
        _$ApiCourseTestTaskMetaDigitalInkImpl>
    implements _$$ApiCourseTestTaskMetaDigitalInkImplCopyWith<$Res> {
  __$$ApiCourseTestTaskMetaDigitalInkImplCopyWithImpl(
      _$ApiCourseTestTaskMetaDigitalInkImpl _value,
      $Res Function(_$ApiCourseTestTaskMetaDigitalInkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ink = null,
    Object? recognition = null,
  }) {
    return _then(_$ApiCourseTestTaskMetaDigitalInkImpl(
      ink: null == ink
          ? _value.ink
          : ink // ignore: cast_nullable_to_non_nullable
              as String,
      recognition: null == recognition
          ? _value.recognition
          : recognition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskMetaDigitalInkImpl
    implements _ApiCourseTestTaskMetaDigitalInk {
  _$ApiCourseTestTaskMetaDigitalInkImpl(
      {required this.ink, required this.recognition, final String? $type})
      : $type = $type ?? 'digitalInk';

  factory _$ApiCourseTestTaskMetaDigitalInkImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskMetaDigitalInkImplFromJson(json);

  @override
  final String ink;
  @override
  final String recognition;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskMeta.digitalInk(ink: $ink, recognition: $recognition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskMetaDigitalInkImpl &&
            (identical(other.ink, ink) || other.ink == ink) &&
            (identical(other.recognition, recognition) ||
                other.recognition == recognition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ink, recognition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskMetaDigitalInkImplCopyWith<
          _$ApiCourseTestTaskMetaDigitalInkImpl>
      get copyWith => __$$ApiCourseTestTaskMetaDigitalInkImplCopyWithImpl<
          _$ApiCourseTestTaskMetaDigitalInkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ink, String recognition) digitalInk,
    required TResult Function(ApiCourseTestTaskAnswer answer) quiz,
    required TResult Function(List<ApiCourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return digitalInk(ink, recognition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ink, String recognition)? digitalInk,
    TResult? Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return digitalInk?.call(ink, recognition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ink, String recognition)? digitalInk,
    TResult Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(ink, recognition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskMetaDigitalInk value)
        digitalInk,
    required TResult Function(_ApiCourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return digitalInk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return digitalInk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskMetaDigitalInkImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskMetaDigitalInk
    implements ApiCourseTestTaskMeta {
  factory _ApiCourseTestTaskMetaDigitalInk(
          {required final String ink, required final String recognition}) =
      _$ApiCourseTestTaskMetaDigitalInkImpl;

  factory _ApiCourseTestTaskMetaDigitalInk.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskMetaDigitalInkImpl.fromJson;

  String get ink;
  String get recognition;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskMetaDigitalInkImplCopyWith<
          _$ApiCourseTestTaskMetaDigitalInkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskMetaQuizImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskMetaQuizImplCopyWith(
          _$ApiCourseTestTaskMetaQuizImpl value,
          $Res Function(_$ApiCourseTestTaskMetaQuizImpl) then) =
      __$$ApiCourseTestTaskMetaQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiCourseTestTaskAnswer answer});

  $ApiCourseTestTaskAnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$ApiCourseTestTaskMetaQuizImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskMetaCopyWithImpl<$Res,
        _$ApiCourseTestTaskMetaQuizImpl>
    implements _$$ApiCourseTestTaskMetaQuizImplCopyWith<$Res> {
  __$$ApiCourseTestTaskMetaQuizImplCopyWithImpl(
      _$ApiCourseTestTaskMetaQuizImpl _value,
      $Res Function(_$ApiCourseTestTaskMetaQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$ApiCourseTestTaskMetaQuizImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskAnswer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiCourseTestTaskAnswerCopyWith<$Res> get answer {
    return $ApiCourseTestTaskAnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskMetaQuizImpl implements _ApiCourseTestTaskMetaQuiz {
  _$ApiCourseTestTaskMetaQuizImpl({required this.answer, final String? $type})
      : $type = $type ?? 'quiz';

  factory _$ApiCourseTestTaskMetaQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskMetaQuizImplFromJson(json);

  @override
  final ApiCourseTestTaskAnswer answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskMeta.quiz(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskMetaQuizImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskMetaQuizImplCopyWith<_$ApiCourseTestTaskMetaQuizImpl>
      get copyWith => __$$ApiCourseTestTaskMetaQuizImplCopyWithImpl<
          _$ApiCourseTestTaskMetaQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ink, String recognition) digitalInk,
    required TResult Function(ApiCourseTestTaskAnswer answer) quiz,
    required TResult Function(List<ApiCourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return quiz(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ink, String recognition)? digitalInk,
    TResult? Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return quiz?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ink, String recognition)? digitalInk,
    TResult Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskMetaDigitalInk value)
        digitalInk,
    required TResult Function(_ApiCourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return quiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return quiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskMetaQuizImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskMetaQuiz implements ApiCourseTestTaskMeta {
  factory _ApiCourseTestTaskMetaQuiz(
          {required final ApiCourseTestTaskAnswer answer}) =
      _$ApiCourseTestTaskMetaQuizImpl;

  factory _ApiCourseTestTaskMetaQuiz.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskMetaQuizImpl.fromJson;

  ApiCourseTestTaskAnswer get answer;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskMetaQuizImplCopyWith<_$ApiCourseTestTaskMetaQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWith<$Res> {
  factory _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWith(
          _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl value,
          $Res Function(_$ApiCourseTestTaskMetaQuizMultipleChoiceImpl) then) =
      __$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApiCourseTestTaskAnswer> answer});
}

/// @nodoc
class __$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskMetaCopyWithImpl<$Res,
        _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl>
    implements _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWith<$Res> {
  __$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl(
      _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl _value,
      $Res Function(_$ApiCourseTestTaskMetaQuizMultipleChoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$ApiCourseTestTaskMetaQuizMultipleChoiceImpl(
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<ApiCourseTestTaskAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl
    implements _ApiCourseTestTaskMetaQuizMultipleChoice {
  _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl(
      {required final List<ApiCourseTestTaskAnswer> answer,
      final String? $type})
      : _answer = answer,
        $type = $type ?? 'quizMultipleChoice';

  factory _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplFromJson(json);

  final List<ApiCourseTestTaskAnswer> _answer;
  @override
  List<ApiCourseTestTaskAnswer> get answer {
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answer);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTaskMeta.quizMultipleChoice(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWith<
          _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl>
      get copyWith =>
          __$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<
              _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ink, String recognition) digitalInk,
    required TResult Function(ApiCourseTestTaskAnswer answer) quiz,
    required TResult Function(List<ApiCourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return quizMultipleChoice(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ink, String recognition)? digitalInk,
    TResult? Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return quizMultipleChoice?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ink, String recognition)? digitalInk,
    TResult Function(ApiCourseTestTaskAnswer answer)? quiz,
    TResult Function(List<ApiCourseTestTaskAnswer> answer)? quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quizMultipleChoice != null) {
      return quizMultipleChoice(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskMetaDigitalInk value)
        digitalInk,
    required TResult Function(_ApiCourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return quizMultipleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return quizMultipleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_ApiCourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_ApiCourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quizMultipleChoice != null) {
      return quizMultipleChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskMetaQuizMultipleChoice
    implements ApiCourseTestTaskMeta {
  factory _ApiCourseTestTaskMetaQuizMultipleChoice(
          {required final List<ApiCourseTestTaskAnswer> answer}) =
      _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl;

  factory _ApiCourseTestTaskMetaQuizMultipleChoice.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl.fromJson;

  List<ApiCourseTestTaskAnswer> get answer;
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskMetaQuizMultipleChoiceImplCopyWith<
          _$ApiCourseTestTaskMetaQuizMultipleChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

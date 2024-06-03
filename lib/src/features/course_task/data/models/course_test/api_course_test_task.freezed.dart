// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_course_test_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCourseTestTask _$ApiCourseTestTaskFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'quizTyped':
      return _ApiCourseTestTaskQuizTyped.fromJson(json);
    case 'multiChoiceQuizTyped':
      return _ApiCourseTestTaskMultiChoiceQuizTyped.fromJson(json);
    case 'digitalInk':
      return _ApiCourseTestTaskDigitalInk.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiCourseTestTask',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiCourseTestTask {
  String get id => throw _privateConstructorUsedError;
  ApiCourseTestTaskQuestion get question => throw _privateConstructorUsedError;
  ApiCourseTestTaskMeta? get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_ApiCourseTestTaskDigitalInk value) digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCourseTestTaskCopyWith<ApiCourseTestTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCourseTestTaskCopyWith<$Res> {
  factory $ApiCourseTestTaskCopyWith(
          ApiCourseTestTask value, $Res Function(ApiCourseTestTask) then) =
      _$ApiCourseTestTaskCopyWithImpl<$Res, ApiCourseTestTask>;
  @useResult
  $Res call(
      {String id,
      ApiCourseTestTaskQuestion question,
      ApiCourseTestTaskMeta? meta});

  $ApiCourseTestTaskQuestionCopyWith<$Res> get question;
  $ApiCourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ApiCourseTestTaskCopyWithImpl<$Res, $Val extends ApiCourseTestTask>
    implements $ApiCourseTestTaskCopyWith<$Res> {
  _$ApiCourseTestTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskQuestion,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiCourseTestTaskQuestionCopyWith<$Res> get question {
    return $ApiCourseTestTaskQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiCourseTestTaskMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $ApiCourseTestTaskMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiCourseTestTaskQuizTypedImplCopyWith<$Res>
    implements $ApiCourseTestTaskCopyWith<$Res> {
  factory _$$ApiCourseTestTaskQuizTypedImplCopyWith(
          _$ApiCourseTestTaskQuizTypedImpl value,
          $Res Function(_$ApiCourseTestTaskQuizTypedImpl) then) =
      __$$ApiCourseTestTaskQuizTypedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ApiCourseTestTaskQuestion question,
      List<ApiCourseTestTaskAnswer> answers,
      ApiCourseTestTaskAnswer rightAnswer,
      ApiCourseTestTaskMeta? meta});

  @override
  $ApiCourseTestTaskQuestionCopyWith<$Res> get question;
  $ApiCourseTestTaskAnswerCopyWith<$Res> get rightAnswer;
  @override
  $ApiCourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ApiCourseTestTaskQuizTypedImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskCopyWithImpl<$Res,
        _$ApiCourseTestTaskQuizTypedImpl>
    implements _$$ApiCourseTestTaskQuizTypedImplCopyWith<$Res> {
  __$$ApiCourseTestTaskQuizTypedImplCopyWithImpl(
      _$ApiCourseTestTaskQuizTypedImpl _value,
      $Res Function(_$ApiCourseTestTaskQuizTypedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answers = null,
    Object? rightAnswer = null,
    Object? meta = freezed,
  }) {
    return _then(_$ApiCourseTestTaskQuizTypedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskQuestion,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<ApiCourseTestTaskAnswer>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskAnswer,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskMeta?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiCourseTestTaskAnswerCopyWith<$Res> get rightAnswer {
    return $ApiCourseTestTaskAnswerCopyWith<$Res>(_value.rightAnswer, (value) {
      return _then(_value.copyWith(rightAnswer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskQuizTypedImpl implements _ApiCourseTestTaskQuizTyped {
  _$ApiCourseTestTaskQuizTypedImpl(
      {required this.id,
      required this.question,
      required final List<ApiCourseTestTaskAnswer> answers,
      required this.rightAnswer,
      this.meta,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'quizTyped';

  factory _$ApiCourseTestTaskQuizTypedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskQuizTypedImplFromJson(json);

  @override
  final String id;
  @override
  final ApiCourseTestTaskQuestion question;
  final List<ApiCourseTestTaskAnswer> _answers;
  @override
  List<ApiCourseTestTaskAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final ApiCourseTestTaskAnswer rightAnswer;
  @override
  final ApiCourseTestTaskMeta? meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTask.quizTyped(id: $id, question: $question, answers: $answers, rightAnswer: $rightAnswer, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskQuizTypedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_answers), rightAnswer, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskQuizTypedImplCopyWith<_$ApiCourseTestTaskQuizTypedImpl>
      get copyWith => __$$ApiCourseTestTaskQuizTypedImplCopyWithImpl<
          _$ApiCourseTestTaskQuizTypedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return quizTyped(id, question, answers, rightAnswer, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return quizTyped?.call(id, question, answers, rightAnswer, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (quizTyped != null) {
      return quizTyped(id, question, answers, rightAnswer, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_ApiCourseTestTaskDigitalInk value) digitalInk,
  }) {
    return quizTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return quizTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (quizTyped != null) {
      return quizTyped(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskQuizTypedImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskQuizTyped implements ApiCourseTestTask {
  factory _ApiCourseTestTaskQuizTyped(
      {required final String id,
      required final ApiCourseTestTaskQuestion question,
      required final List<ApiCourseTestTaskAnswer> answers,
      required final ApiCourseTestTaskAnswer rightAnswer,
      final ApiCourseTestTaskMeta? meta}) = _$ApiCourseTestTaskQuizTypedImpl;

  factory _ApiCourseTestTaskQuizTyped.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskQuizTypedImpl.fromJson;

  @override
  String get id;
  @override
  ApiCourseTestTaskQuestion get question;
  List<ApiCourseTestTaskAnswer> get answers;
  ApiCourseTestTaskAnswer get rightAnswer;
  @override
  ApiCourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskQuizTypedImplCopyWith<_$ApiCourseTestTaskQuizTypedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWith<$Res>
    implements $ApiCourseTestTaskCopyWith<$Res> {
  factory _$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWith(
          _$ApiCourseTestTaskMultiChoiceQuizTypedImpl value,
          $Res Function(_$ApiCourseTestTaskMultiChoiceQuizTypedImpl) then) =
      __$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ApiCourseTestTaskQuestion question,
      List<ApiCourseTestTaskAnswer> answers,
      List<ApiCourseTestTaskAnswer> rightAnswers,
      ApiCourseTestTaskMeta? meta});

  @override
  $ApiCourseTestTaskQuestionCopyWith<$Res> get question;
  @override
  $ApiCourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskCopyWithImpl<$Res,
        _$ApiCourseTestTaskMultiChoiceQuizTypedImpl>
    implements _$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWith<$Res> {
  __$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl(
      _$ApiCourseTestTaskMultiChoiceQuizTypedImpl _value,
      $Res Function(_$ApiCourseTestTaskMultiChoiceQuizTypedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answers = null,
    Object? rightAnswers = null,
    Object? meta = freezed,
  }) {
    return _then(_$ApiCourseTestTaskMultiChoiceQuizTypedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskQuestion,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<ApiCourseTestTaskAnswer>,
      rightAnswers: null == rightAnswers
          ? _value._rightAnswers
          : rightAnswers // ignore: cast_nullable_to_non_nullable
              as List<ApiCourseTestTaskAnswer>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskMultiChoiceQuizTypedImpl
    implements _ApiCourseTestTaskMultiChoiceQuizTyped {
  _$ApiCourseTestTaskMultiChoiceQuizTypedImpl(
      {required this.id,
      required this.question,
      required final List<ApiCourseTestTaskAnswer> answers,
      required final List<ApiCourseTestTaskAnswer> rightAnswers,
      this.meta,
      final String? $type})
      : _answers = answers,
        _rightAnswers = rightAnswers,
        $type = $type ?? 'multiChoiceQuizTyped';

  factory _$ApiCourseTestTaskMultiChoiceQuizTypedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskMultiChoiceQuizTypedImplFromJson(json);

  @override
  final String id;
  @override
  final ApiCourseTestTaskQuestion question;
  final List<ApiCourseTestTaskAnswer> _answers;
  @override
  List<ApiCourseTestTaskAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<ApiCourseTestTaskAnswer> _rightAnswers;
  @override
  List<ApiCourseTestTaskAnswer> get rightAnswers {
    if (_rightAnswers is EqualUnmodifiableListView) return _rightAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rightAnswers);
  }

  @override
  final ApiCourseTestTaskMeta? meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTask.multiChoiceQuizTyped(id: $id, question: $question, answers: $answers, rightAnswers: $rightAnswers, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskMultiChoiceQuizTypedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._rightAnswers, _rightAnswers) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_rightAnswers),
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWith<
          _$ApiCourseTestTaskMultiChoiceQuizTypedImpl>
      get copyWith => __$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<
          _$ApiCourseTestTaskMultiChoiceQuizTypedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return multiChoiceQuizTyped(id, question, answers, rightAnswers, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return multiChoiceQuizTyped?.call(
        id, question, answers, rightAnswers, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (multiChoiceQuizTyped != null) {
      return multiChoiceQuizTyped(id, question, answers, rightAnswers, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_ApiCourseTestTaskDigitalInk value) digitalInk,
  }) {
    return multiChoiceQuizTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return multiChoiceQuizTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (multiChoiceQuizTyped != null) {
      return multiChoiceQuizTyped(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskMultiChoiceQuizTypedImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskMultiChoiceQuizTyped
    implements ApiCourseTestTask {
  factory _ApiCourseTestTaskMultiChoiceQuizTyped(
          {required final String id,
          required final ApiCourseTestTaskQuestion question,
          required final List<ApiCourseTestTaskAnswer> answers,
          required final List<ApiCourseTestTaskAnswer> rightAnswers,
          final ApiCourseTestTaskMeta? meta}) =
      _$ApiCourseTestTaskMultiChoiceQuizTypedImpl;

  factory _ApiCourseTestTaskMultiChoiceQuizTyped.fromJson(
          Map<String, dynamic> json) =
      _$ApiCourseTestTaskMultiChoiceQuizTypedImpl.fromJson;

  @override
  String get id;
  @override
  ApiCourseTestTaskQuestion get question;
  List<ApiCourseTestTaskAnswer> get answers;
  List<ApiCourseTestTaskAnswer> get rightAnswers;
  @override
  ApiCourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskMultiChoiceQuizTypedImplCopyWith<
          _$ApiCourseTestTaskMultiChoiceQuizTypedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCourseTestTaskDigitalInkImplCopyWith<$Res>
    implements $ApiCourseTestTaskCopyWith<$Res> {
  factory _$$ApiCourseTestTaskDigitalInkImplCopyWith(
          _$ApiCourseTestTaskDigitalInkImpl value,
          $Res Function(_$ApiCourseTestTaskDigitalInkImpl) then) =
      __$$ApiCourseTestTaskDigitalInkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ApiCourseTestTaskQuestion question,
      String rightAnswer,
      String languageCode,
      ApiCourseTestTaskMeta? meta});

  @override
  $ApiCourseTestTaskQuestionCopyWith<$Res> get question;
  @override
  $ApiCourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ApiCourseTestTaskDigitalInkImplCopyWithImpl<$Res>
    extends _$ApiCourseTestTaskCopyWithImpl<$Res,
        _$ApiCourseTestTaskDigitalInkImpl>
    implements _$$ApiCourseTestTaskDigitalInkImplCopyWith<$Res> {
  __$$ApiCourseTestTaskDigitalInkImplCopyWithImpl(
      _$ApiCourseTestTaskDigitalInkImpl _value,
      $Res Function(_$ApiCourseTestTaskDigitalInkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? rightAnswer = null,
    Object? languageCode = null,
    Object? meta = freezed,
  }) {
    return _then(_$ApiCourseTestTaskDigitalInkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskQuestion,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ApiCourseTestTaskMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCourseTestTaskDigitalInkImpl
    implements _ApiCourseTestTaskDigitalInk {
  _$ApiCourseTestTaskDigitalInkImpl(
      {required this.id,
      required this.question,
      required this.rightAnswer,
      required this.languageCode,
      this.meta,
      final String? $type})
      : $type = $type ?? 'digitalInk';

  factory _$ApiCourseTestTaskDigitalInkImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiCourseTestTaskDigitalInkImplFromJson(json);

  @override
  final String id;
  @override
  final ApiCourseTestTaskQuestion question;
  @override
  final String rightAnswer;
  @override
  final String languageCode;
  @override
  final ApiCourseTestTaskMeta? meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiCourseTestTask.digitalInk(id: $id, question: $question, rightAnswer: $rightAnswer, languageCode: $languageCode, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCourseTestTaskDigitalInkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, rightAnswer, languageCode, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCourseTestTaskDigitalInkImplCopyWith<_$ApiCourseTestTaskDigitalInkImpl>
      get copyWith => __$$ApiCourseTestTaskDigitalInkImplCopyWithImpl<
          _$ApiCourseTestTaskDigitalInkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return digitalInk(id, question, rightAnswer, languageCode, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return digitalInk?.call(id, question, rightAnswer, languageCode, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            ApiCourseTestTaskAnswer rightAnswer,
            ApiCourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            List<ApiCourseTestTaskAnswer> answers,
            List<ApiCourseTestTaskAnswer> rightAnswers,
            ApiCourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(
            String id,
            ApiCourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            ApiCourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(id, question, rightAnswer, languageCode, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiCourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_ApiCourseTestTaskDigitalInk value) digitalInk,
  }) {
    return digitalInk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return digitalInk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiCourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_ApiCourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_ApiCourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCourseTestTaskDigitalInkImplToJson(
      this,
    );
  }
}

abstract class _ApiCourseTestTaskDigitalInk implements ApiCourseTestTask {
  factory _ApiCourseTestTaskDigitalInk(
      {required final String id,
      required final ApiCourseTestTaskQuestion question,
      required final String rightAnswer,
      required final String languageCode,
      final ApiCourseTestTaskMeta? meta}) = _$ApiCourseTestTaskDigitalInkImpl;

  factory _ApiCourseTestTaskDigitalInk.fromJson(Map<String, dynamic> json) =
      _$ApiCourseTestTaskDigitalInkImpl.fromJson;

  @override
  String get id;
  @override
  ApiCourseTestTaskQuestion get question;
  String get rightAnswer;
  String get languageCode;
  @override
  ApiCourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ApiCourseTestTaskDigitalInkImplCopyWith<_$ApiCourseTestTaskDigitalInkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestTask {
  String get id => throw _privateConstructorUsedError;
  double get scores => throw _privateConstructorUsedError;
  CourseTestTaskQuestion get question => throw _privateConstructorUsedError;
  CourseTestTaskMeta? get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            CourseTestTaskMeta? meta)
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_CourseTestTaskDigitalInk value) digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_CourseTestTaskDigitalInk value)? digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_CourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseTestTaskCopyWith<CourseTestTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestTaskCopyWith<$Res> {
  factory $CourseTestTaskCopyWith(
          CourseTestTask value, $Res Function(CourseTestTask) then) =
      _$CourseTestTaskCopyWithImpl<$Res, CourseTestTask>;
  @useResult
  $Res call(
      {String id,
      double scores,
      CourseTestTaskQuestion question,
      CourseTestTaskMeta? meta});

  $CourseTestTaskQuestionCopyWith<$Res> get question;
  $CourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CourseTestTaskCopyWithImpl<$Res, $Val extends CourseTestTask>
    implements $CourseTestTaskCopyWith<$Res> {
  _$CourseTestTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scores = null,
    Object? question = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskQuestion,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestTaskQuestionCopyWith<$Res> get question {
    return $CourseTestTaskQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestTaskMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $CourseTestTaskMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTestTaskQuizTypedImplCopyWith<$Res>
    implements $CourseTestTaskCopyWith<$Res> {
  factory _$$CourseTestTaskQuizTypedImplCopyWith(
          _$CourseTestTaskQuizTypedImpl value,
          $Res Function(_$CourseTestTaskQuizTypedImpl) then) =
      __$$CourseTestTaskQuizTypedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double scores,
      CourseTestTaskQuestion question,
      List<CourseTestTaskAnswer> answers,
      CourseTestTaskAnswer rightAnswer,
      CourseTestTaskMeta? meta});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
  $CourseTestTaskAnswerCopyWith<$Res> get rightAnswer;
  @override
  $CourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CourseTestTaskQuizTypedImplCopyWithImpl<$Res>
    extends _$CourseTestTaskCopyWithImpl<$Res, _$CourseTestTaskQuizTypedImpl>
    implements _$$CourseTestTaskQuizTypedImplCopyWith<$Res> {
  __$$CourseTestTaskQuizTypedImplCopyWithImpl(
      _$CourseTestTaskQuizTypedImpl _value,
      $Res Function(_$CourseTestTaskQuizTypedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scores = null,
    Object? question = null,
    Object? answers = null,
    Object? rightAnswer = null,
    Object? meta = freezed,
  }) {
    return _then(_$CourseTestTaskQuizTypedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskQuestion,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<CourseTestTaskAnswer>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskAnswer,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskMeta?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestTaskAnswerCopyWith<$Res> get rightAnswer {
    return $CourseTestTaskAnswerCopyWith<$Res>(_value.rightAnswer, (value) {
      return _then(_value.copyWith(rightAnswer: value));
    });
  }
}

/// @nodoc

class _$CourseTestTaskQuizTypedImpl implements _CourseTestTaskQuizTyped {
  _$CourseTestTaskQuizTypedImpl(
      {required this.id,
      required this.scores,
      required this.question,
      required final List<CourseTestTaskAnswer> answers,
      required this.rightAnswer,
      this.meta})
      : _answers = answers;

  @override
  final String id;
  @override
  final double scores;
  @override
  final CourseTestTaskQuestion question;
  final List<CourseTestTaskAnswer> _answers;
  @override
  List<CourseTestTaskAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final CourseTestTaskAnswer rightAnswer;
  @override
  final CourseTestTaskMeta? meta;

  @override
  String toString() {
    return 'CourseTestTask.quizTyped(id: $id, scores: $scores, question: $question, answers: $answers, rightAnswer: $rightAnswer, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskQuizTypedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, scores, question,
      const DeepCollectionEquality().hash(_answers), rightAnswer, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskQuizTypedImplCopyWith<_$CourseTestTaskQuizTypedImpl>
      get copyWith => __$$CourseTestTaskQuizTypedImplCopyWithImpl<
          _$CourseTestTaskQuizTypedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            CourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return quizTyped(id, scores, question, answers, rightAnswer, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return quizTyped?.call(id, scores, question, answers, rightAnswer, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (quizTyped != null) {
      return quizTyped(id, scores, question, answers, rightAnswer, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_CourseTestTaskDigitalInk value) digitalInk,
  }) {
    return quizTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_CourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return quizTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_CourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (quizTyped != null) {
      return quizTyped(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskQuizTyped implements CourseTestTask {
  factory _CourseTestTaskQuizTyped(
      {required final String id,
      required final double scores,
      required final CourseTestTaskQuestion question,
      required final List<CourseTestTaskAnswer> answers,
      required final CourseTestTaskAnswer rightAnswer,
      final CourseTestTaskMeta? meta}) = _$CourseTestTaskQuizTypedImpl;

  @override
  String get id;
  @override
  double get scores;
  @override
  CourseTestTaskQuestion get question;
  List<CourseTestTaskAnswer> get answers;
  CourseTestTaskAnswer get rightAnswer;
  @override
  CourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestTaskQuizTypedImplCopyWith<_$CourseTestTaskQuizTypedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskMultiChoiceQuizTypedImplCopyWith<$Res>
    implements $CourseTestTaskCopyWith<$Res> {
  factory _$$CourseTestTaskMultiChoiceQuizTypedImplCopyWith(
          _$CourseTestTaskMultiChoiceQuizTypedImpl value,
          $Res Function(_$CourseTestTaskMultiChoiceQuizTypedImpl) then) =
      __$$CourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double scores,
      CourseTestTaskQuestion question,
      List<CourseTestTaskAnswer> answers,
      List<CourseTestTaskAnswer> rightAnswers,
      CourseTestTaskMeta? meta});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
  @override
  $CourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<$Res>
    extends _$CourseTestTaskCopyWithImpl<$Res,
        _$CourseTestTaskMultiChoiceQuizTypedImpl>
    implements _$$CourseTestTaskMultiChoiceQuizTypedImplCopyWith<$Res> {
  __$$CourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl(
      _$CourseTestTaskMultiChoiceQuizTypedImpl _value,
      $Res Function(_$CourseTestTaskMultiChoiceQuizTypedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scores = null,
    Object? question = null,
    Object? answers = null,
    Object? rightAnswers = null,
    Object? meta = freezed,
  }) {
    return _then(_$CourseTestTaskMultiChoiceQuizTypedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskQuestion,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<CourseTestTaskAnswer>,
      rightAnswers: null == rightAnswers
          ? _value._rightAnswers
          : rightAnswers // ignore: cast_nullable_to_non_nullable
              as List<CourseTestTaskAnswer>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskMeta?,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskMultiChoiceQuizTypedImpl
    implements _CourseTestTaskMultiChoiceQuizTyped {
  _$CourseTestTaskMultiChoiceQuizTypedImpl(
      {required this.id,
      required this.scores,
      required this.question,
      required final List<CourseTestTaskAnswer> answers,
      required final List<CourseTestTaskAnswer> rightAnswers,
      this.meta})
      : _answers = answers,
        _rightAnswers = rightAnswers;

  @override
  final String id;
  @override
  final double scores;
  @override
  final CourseTestTaskQuestion question;
  final List<CourseTestTaskAnswer> _answers;
  @override
  List<CourseTestTaskAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<CourseTestTaskAnswer> _rightAnswers;
  @override
  List<CourseTestTaskAnswer> get rightAnswers {
    if (_rightAnswers is EqualUnmodifiableListView) return _rightAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rightAnswers);
  }

  @override
  final CourseTestTaskMeta? meta;

  @override
  String toString() {
    return 'CourseTestTask.multiChoiceQuizTyped(id: $id, scores: $scores, question: $question, answers: $answers, rightAnswers: $rightAnswers, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskMultiChoiceQuizTypedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._rightAnswers, _rightAnswers) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scores,
      question,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_rightAnswers),
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskMultiChoiceQuizTypedImplCopyWith<
          _$CourseTestTaskMultiChoiceQuizTypedImpl>
      get copyWith => __$$CourseTestTaskMultiChoiceQuizTypedImplCopyWithImpl<
          _$CourseTestTaskMultiChoiceQuizTypedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            CourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return multiChoiceQuizTyped(
        id, scores, question, answers, rightAnswers, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return multiChoiceQuizTyped?.call(
        id, scores, question, answers, rightAnswers, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (multiChoiceQuizTyped != null) {
      return multiChoiceQuizTyped(
          id, scores, question, answers, rightAnswers, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_CourseTestTaskDigitalInk value) digitalInk,
  }) {
    return multiChoiceQuizTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_CourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return multiChoiceQuizTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_CourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (multiChoiceQuizTyped != null) {
      return multiChoiceQuizTyped(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskMultiChoiceQuizTyped implements CourseTestTask {
  factory _CourseTestTaskMultiChoiceQuizTyped(
          {required final String id,
          required final double scores,
          required final CourseTestTaskQuestion question,
          required final List<CourseTestTaskAnswer> answers,
          required final List<CourseTestTaskAnswer> rightAnswers,
          final CourseTestTaskMeta? meta}) =
      _$CourseTestTaskMultiChoiceQuizTypedImpl;

  @override
  String get id;
  @override
  double get scores;
  @override
  CourseTestTaskQuestion get question;
  List<CourseTestTaskAnswer> get answers;
  List<CourseTestTaskAnswer> get rightAnswers;
  @override
  CourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestTaskMultiChoiceQuizTypedImplCopyWith<
          _$CourseTestTaskMultiChoiceQuizTypedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskDigitalInkImplCopyWith<$Res>
    implements $CourseTestTaskCopyWith<$Res> {
  factory _$$CourseTestTaskDigitalInkImplCopyWith(
          _$CourseTestTaskDigitalInkImpl value,
          $Res Function(_$CourseTestTaskDigitalInkImpl) then) =
      __$$CourseTestTaskDigitalInkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double scores,
      CourseTestTaskQuestion question,
      String rightAnswer,
      String languageCode,
      CourseTestTaskMeta? meta});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
  @override
  $CourseTestTaskMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CourseTestTaskDigitalInkImplCopyWithImpl<$Res>
    extends _$CourseTestTaskCopyWithImpl<$Res, _$CourseTestTaskDigitalInkImpl>
    implements _$$CourseTestTaskDigitalInkImplCopyWith<$Res> {
  __$$CourseTestTaskDigitalInkImplCopyWithImpl(
      _$CourseTestTaskDigitalInkImpl _value,
      $Res Function(_$CourseTestTaskDigitalInkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scores = null,
    Object? question = null,
    Object? rightAnswer = null,
    Object? languageCode = null,
    Object? meta = freezed,
  }) {
    return _then(_$CourseTestTaskDigitalInkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as double,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskQuestion,
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
              as CourseTestTaskMeta?,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskDigitalInkImpl implements _CourseTestTaskDigitalInk {
  _$CourseTestTaskDigitalInkImpl(
      {required this.id,
      required this.scores,
      required this.question,
      required this.rightAnswer,
      required this.languageCode,
      this.meta});

  @override
  final String id;
  @override
  final double scores;
  @override
  final CourseTestTaskQuestion question;
  @override
  final String rightAnswer;
  @override
  final String languageCode;
  @override
  final CourseTestTaskMeta? meta;

  @override
  String toString() {
    return 'CourseTestTask.digitalInk(id: $id, scores: $scores, question: $question, rightAnswer: $rightAnswer, languageCode: $languageCode, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskDigitalInkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, scores, question, rightAnswer, languageCode, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskDigitalInkImplCopyWith<_$CourseTestTaskDigitalInkImpl>
      get copyWith => __$$CourseTestTaskDigitalInkImplCopyWithImpl<
          _$CourseTestTaskDigitalInkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)
        quizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)
        multiChoiceQuizTyped,
    required TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            String rightAnswer,
            String languageCode,
            CourseTestTaskMeta? meta)
        digitalInk,
  }) {
    return digitalInk(id, scores, question, rightAnswer, languageCode, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult? Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult? Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
  }) {
    return digitalInk?.call(
        id, scores, question, rightAnswer, languageCode, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer,
            CourseTestTaskMeta? meta)?
        quizTyped,
    TResult Function(
            String id,
            double scores,
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers,
            CourseTestTaskMeta? meta)?
        multiChoiceQuizTyped,
    TResult Function(String id, double scores, CourseTestTaskQuestion question,
            String rightAnswer, String languageCode, CourseTestTaskMeta? meta)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(id, scores, question, rightAnswer, languageCode, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskQuizTyped value) quizTyped,
    required TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)
        multiChoiceQuizTyped,
    required TResult Function(_CourseTestTaskDigitalInk value) digitalInk,
  }) {
    return digitalInk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult? Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult? Function(_CourseTestTaskDigitalInk value)? digitalInk,
  }) {
    return digitalInk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskQuizTyped value)? quizTyped,
    TResult Function(_CourseTestTaskMultiChoiceQuizTyped value)?
        multiChoiceQuizTyped,
    TResult Function(_CourseTestTaskDigitalInk value)? digitalInk,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskDigitalInk implements CourseTestTask {
  factory _CourseTestTaskDigitalInk(
      {required final String id,
      required final double scores,
      required final CourseTestTaskQuestion question,
      required final String rightAnswer,
      required final String languageCode,
      final CourseTestTaskMeta? meta}) = _$CourseTestTaskDigitalInkImpl;

  @override
  String get id;
  @override
  double get scores;
  @override
  CourseTestTaskQuestion get question;
  String get rightAnswer;
  String get languageCode;
  @override
  CourseTestTaskMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestTaskDigitalInkImplCopyWith<_$CourseTestTaskDigitalInkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

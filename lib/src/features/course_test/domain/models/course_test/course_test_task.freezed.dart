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
  CourseTestTaskQuestion get question => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)
        quizTyped,
    required TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)
        multiChoiceQuizTyped,
    required TResult Function(CourseTestTaskQuestion question,
            String rightAnswer, String languageCode)
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult? Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
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
  $Res call({CourseTestTaskQuestion question});

  $CourseTestTaskQuestionCopyWith<$Res> get question;
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
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskQuestion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestTaskQuestionCopyWith<$Res> get question {
    return $CourseTestTaskQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
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
      {CourseTestTaskQuestion question,
      List<CourseTestTaskAnswer> answers,
      CourseTestTaskAnswer rightAnswer});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
  $CourseTestTaskAnswerCopyWith<$Res> get rightAnswer;
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
    Object? question = null,
    Object? answers = null,
    Object? rightAnswer = null,
  }) {
    return _then(_$CourseTestTaskQuizTypedImpl(
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
      {required this.question,
      required final List<CourseTestTaskAnswer> answers,
      required this.rightAnswer})
      : _answers = answers;

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
  String toString() {
    return 'CourseTestTask.quizTyped(question: $question, answers: $answers, rightAnswer: $rightAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskQuizTypedImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question,
      const DeepCollectionEquality().hash(_answers), rightAnswer);

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
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)
        quizTyped,
    required TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)
        multiChoiceQuizTyped,
    required TResult Function(CourseTestTaskQuestion question,
            String rightAnswer, String languageCode)
        digitalInk,
  }) {
    return quizTyped(question, answers, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult? Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
  }) {
    return quizTyped?.call(question, answers, rightAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (quizTyped != null) {
      return quizTyped(question, answers, rightAnswer);
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
          {required final CourseTestTaskQuestion question,
          required final List<CourseTestTaskAnswer> answers,
          required final CourseTestTaskAnswer rightAnswer}) =
      _$CourseTestTaskQuizTypedImpl;

  @override
  CourseTestTaskQuestion get question;
  List<CourseTestTaskAnswer> get answers;
  CourseTestTaskAnswer get rightAnswer;
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
      {CourseTestTaskQuestion question,
      List<CourseTestTaskAnswer> answers,
      List<CourseTestTaskAnswer> rightAnswers});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
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
    Object? question = null,
    Object? answers = null,
    Object? rightAnswers = null,
  }) {
    return _then(_$CourseTestTaskMultiChoiceQuizTypedImpl(
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
    ));
  }
}

/// @nodoc

class _$CourseTestTaskMultiChoiceQuizTypedImpl
    implements _CourseTestTaskMultiChoiceQuizTyped {
  _$CourseTestTaskMultiChoiceQuizTypedImpl(
      {required this.question,
      required final List<CourseTestTaskAnswer> answers,
      required final List<CourseTestTaskAnswer> rightAnswers})
      : _answers = answers,
        _rightAnswers = rightAnswers;

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
  String toString() {
    return 'CourseTestTask.multiChoiceQuizTyped(question: $question, answers: $answers, rightAnswers: $rightAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskMultiChoiceQuizTypedImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._rightAnswers, _rightAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_rightAnswers));

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
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)
        quizTyped,
    required TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)
        multiChoiceQuizTyped,
    required TResult Function(CourseTestTaskQuestion question,
            String rightAnswer, String languageCode)
        digitalInk,
  }) {
    return multiChoiceQuizTyped(question, answers, rightAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult? Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
  }) {
    return multiChoiceQuizTyped?.call(question, answers, rightAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (multiChoiceQuizTyped != null) {
      return multiChoiceQuizTyped(question, answers, rightAnswers);
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
          {required final CourseTestTaskQuestion question,
          required final List<CourseTestTaskAnswer> answers,
          required final List<CourseTestTaskAnswer> rightAnswers}) =
      _$CourseTestTaskMultiChoiceQuizTypedImpl;

  @override
  CourseTestTaskQuestion get question;
  List<CourseTestTaskAnswer> get answers;
  List<CourseTestTaskAnswer> get rightAnswers;
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
      {CourseTestTaskQuestion question,
      String rightAnswer,
      String languageCode});

  @override
  $CourseTestTaskQuestionCopyWith<$Res> get question;
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
    Object? question = null,
    Object? rightAnswer = null,
    Object? languageCode = null,
  }) {
    return _then(_$CourseTestTaskDigitalInkImpl(
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
    ));
  }
}

/// @nodoc

class _$CourseTestTaskDigitalInkImpl implements _CourseTestTaskDigitalInk {
  _$CourseTestTaskDigitalInkImpl(
      {required this.question,
      required this.rightAnswer,
      required this.languageCode});

  @override
  final CourseTestTaskQuestion question;
  @override
  final String rightAnswer;
  @override
  final String languageCode;

  @override
  String toString() {
    return 'CourseTestTask.digitalInk(question: $question, rightAnswer: $rightAnswer, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskDigitalInkImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, question, rightAnswer, languageCode);

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
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)
        quizTyped,
    required TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)
        multiChoiceQuizTyped,
    required TResult Function(CourseTestTaskQuestion question,
            String rightAnswer, String languageCode)
        digitalInk,
  }) {
    return digitalInk(question, rightAnswer, languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult? Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult? Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
  }) {
    return digitalInk?.call(question, rightAnswer, languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            CourseTestTaskAnswer rightAnswer)?
        quizTyped,
    TResult Function(
            CourseTestTaskQuestion question,
            List<CourseTestTaskAnswer> answers,
            List<CourseTestTaskAnswer> rightAnswers)?
        multiChoiceQuizTyped,
    TResult Function(CourseTestTaskQuestion question, String rightAnswer,
            String languageCode)?
        digitalInk,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(question, rightAnswer, languageCode);
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
      {required final CourseTestTaskQuestion question,
      required final String rightAnswer,
      required final String languageCode}) = _$CourseTestTaskDigitalInkImpl;

  @override
  CourseTestTaskQuestion get question;
  String get rightAnswer;
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$CourseTestTaskDigitalInkImplCopyWith<_$CourseTestTaskDigitalInkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

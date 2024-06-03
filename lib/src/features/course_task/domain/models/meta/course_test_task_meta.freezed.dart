// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_test_task_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseTestTaskMeta {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ink ink, String recognition) digitalInk,
    required TResult Function(CourseTestTaskAnswer answer) quiz,
    required TResult Function(List<CourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ink ink, String recognition)? digitalInk,
    TResult? Function(CourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ink ink, String recognition)? digitalInk,
    TResult Function(CourseTestTaskAnswer answer)? quiz,
    TResult Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseTestTaskMetaDigitalInk value) digitalInk,
    required TResult Function(_CourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestTaskMetaCopyWith<$Res> {
  factory $CourseTestTaskMetaCopyWith(
          CourseTestTaskMeta value, $Res Function(CourseTestTaskMeta) then) =
      _$CourseTestTaskMetaCopyWithImpl<$Res, CourseTestTaskMeta>;
}

/// @nodoc
class _$CourseTestTaskMetaCopyWithImpl<$Res, $Val extends CourseTestTaskMeta>
    implements $CourseTestTaskMetaCopyWith<$Res> {
  _$CourseTestTaskMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CourseTestTaskMetaDigitalInkImplCopyWith<$Res> {
  factory _$$CourseTestTaskMetaDigitalInkImplCopyWith(
          _$CourseTestTaskMetaDigitalInkImpl value,
          $Res Function(_$CourseTestTaskMetaDigitalInkImpl) then) =
      __$$CourseTestTaskMetaDigitalInkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ink ink, String recognition});
}

/// @nodoc
class __$$CourseTestTaskMetaDigitalInkImplCopyWithImpl<$Res>
    extends _$CourseTestTaskMetaCopyWithImpl<$Res,
        _$CourseTestTaskMetaDigitalInkImpl>
    implements _$$CourseTestTaskMetaDigitalInkImplCopyWith<$Res> {
  __$$CourseTestTaskMetaDigitalInkImplCopyWithImpl(
      _$CourseTestTaskMetaDigitalInkImpl _value,
      $Res Function(_$CourseTestTaskMetaDigitalInkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ink = null,
    Object? recognition = null,
  }) {
    return _then(_$CourseTestTaskMetaDigitalInkImpl(
      ink: null == ink
          ? _value.ink
          : ink // ignore: cast_nullable_to_non_nullable
              as Ink,
      recognition: null == recognition
          ? _value.recognition
          : recognition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskMetaDigitalInkImpl
    implements _CourseTestTaskMetaDigitalInk {
  _$CourseTestTaskMetaDigitalInkImpl(
      {required this.ink, required this.recognition});

  @override
  final Ink ink;
  @override
  final String recognition;

  @override
  String toString() {
    return 'CourseTestTaskMeta.digitalInk(ink: $ink, recognition: $recognition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskMetaDigitalInkImpl &&
            (identical(other.ink, ink) || other.ink == ink) &&
            (identical(other.recognition, recognition) ||
                other.recognition == recognition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ink, recognition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskMetaDigitalInkImplCopyWith<
          _$CourseTestTaskMetaDigitalInkImpl>
      get copyWith => __$$CourseTestTaskMetaDigitalInkImplCopyWithImpl<
          _$CourseTestTaskMetaDigitalInkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ink ink, String recognition) digitalInk,
    required TResult Function(CourseTestTaskAnswer answer) quiz,
    required TResult Function(List<CourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return digitalInk(ink, recognition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ink ink, String recognition)? digitalInk,
    TResult? Function(CourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return digitalInk?.call(ink, recognition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ink ink, String recognition)? digitalInk,
    TResult Function(CourseTestTaskAnswer answer)? quiz,
    TResult Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
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
    required TResult Function(_CourseTestTaskMetaDigitalInk value) digitalInk,
    required TResult Function(_CourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return digitalInk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return digitalInk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (digitalInk != null) {
      return digitalInk(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskMetaDigitalInk implements CourseTestTaskMeta {
  factory _CourseTestTaskMetaDigitalInk(
      {required final Ink ink,
      required final String recognition}) = _$CourseTestTaskMetaDigitalInkImpl;

  Ink get ink;
  String get recognition;
  @JsonKey(ignore: true)
  _$$CourseTestTaskMetaDigitalInkImplCopyWith<
          _$CourseTestTaskMetaDigitalInkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskMetaQuizImplCopyWith<$Res> {
  factory _$$CourseTestTaskMetaQuizImplCopyWith(
          _$CourseTestTaskMetaQuizImpl value,
          $Res Function(_$CourseTestTaskMetaQuizImpl) then) =
      __$$CourseTestTaskMetaQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseTestTaskAnswer answer});

  $CourseTestTaskAnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$CourseTestTaskMetaQuizImplCopyWithImpl<$Res>
    extends _$CourseTestTaskMetaCopyWithImpl<$Res, _$CourseTestTaskMetaQuizImpl>
    implements _$$CourseTestTaskMetaQuizImplCopyWith<$Res> {
  __$$CourseTestTaskMetaQuizImplCopyWithImpl(
      _$CourseTestTaskMetaQuizImpl _value,
      $Res Function(_$CourseTestTaskMetaQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$CourseTestTaskMetaQuizImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as CourseTestTaskAnswer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTestTaskAnswerCopyWith<$Res> get answer {
    return $CourseTestTaskAnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$CourseTestTaskMetaQuizImpl implements _CourseTestTaskMetaQuiz {
  _$CourseTestTaskMetaQuizImpl({required this.answer});

  @override
  final CourseTestTaskAnswer answer;

  @override
  String toString() {
    return 'CourseTestTaskMeta.quiz(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskMetaQuizImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskMetaQuizImplCopyWith<_$CourseTestTaskMetaQuizImpl>
      get copyWith => __$$CourseTestTaskMetaQuizImplCopyWithImpl<
          _$CourseTestTaskMetaQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ink ink, String recognition) digitalInk,
    required TResult Function(CourseTestTaskAnswer answer) quiz,
    required TResult Function(List<CourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return quiz(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ink ink, String recognition)? digitalInk,
    TResult? Function(CourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return quiz?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ink ink, String recognition)? digitalInk,
    TResult Function(CourseTestTaskAnswer answer)? quiz,
    TResult Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
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
    required TResult Function(_CourseTestTaskMetaDigitalInk value) digitalInk,
    required TResult Function(_CourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return quiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return quiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskMetaQuiz implements CourseTestTaskMeta {
  factory _CourseTestTaskMetaQuiz(
          {required final CourseTestTaskAnswer answer}) =
      _$CourseTestTaskMetaQuizImpl;

  CourseTestTaskAnswer get answer;
  @JsonKey(ignore: true)
  _$$CourseTestTaskMetaQuizImplCopyWith<_$CourseTestTaskMetaQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWith<$Res> {
  factory _$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWith(
          _$CourseTestTaskMetaQuizMultipleChoiceImpl value,
          $Res Function(_$CourseTestTaskMetaQuizMultipleChoiceImpl) then) =
      __$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CourseTestTaskAnswer> answer});
}

/// @nodoc
class __$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<$Res>
    extends _$CourseTestTaskMetaCopyWithImpl<$Res,
        _$CourseTestTaskMetaQuizMultipleChoiceImpl>
    implements _$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWith<$Res> {
  __$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl(
      _$CourseTestTaskMetaQuizMultipleChoiceImpl _value,
      $Res Function(_$CourseTestTaskMetaQuizMultipleChoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$CourseTestTaskMetaQuizMultipleChoiceImpl(
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<CourseTestTaskAnswer>,
    ));
  }
}

/// @nodoc

class _$CourseTestTaskMetaQuizMultipleChoiceImpl
    implements _CourseTestTaskMetaQuizMultipleChoice {
  _$CourseTestTaskMetaQuizMultipleChoiceImpl(
      {required final List<CourseTestTaskAnswer> answer})
      : _answer = answer;

  final List<CourseTestTaskAnswer> _answer;
  @override
  List<CourseTestTaskAnswer> get answer {
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answer);
  }

  @override
  String toString() {
    return 'CourseTestTaskMeta.quizMultipleChoice(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestTaskMetaQuizMultipleChoiceImpl &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWith<
          _$CourseTestTaskMetaQuizMultipleChoiceImpl>
      get copyWith => __$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWithImpl<
          _$CourseTestTaskMetaQuizMultipleChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ink ink, String recognition) digitalInk,
    required TResult Function(CourseTestTaskAnswer answer) quiz,
    required TResult Function(List<CourseTestTaskAnswer> answer)
        quizMultipleChoice,
  }) {
    return quizMultipleChoice(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ink ink, String recognition)? digitalInk,
    TResult? Function(CourseTestTaskAnswer answer)? quiz,
    TResult? Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
  }) {
    return quizMultipleChoice?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ink ink, String recognition)? digitalInk,
    TResult Function(CourseTestTaskAnswer answer)? quiz,
    TResult Function(List<CourseTestTaskAnswer> answer)? quizMultipleChoice,
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
    required TResult Function(_CourseTestTaskMetaDigitalInk value) digitalInk,
    required TResult Function(_CourseTestTaskMetaQuiz value) quiz,
    required TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)
        quizMultipleChoice,
  }) {
    return quizMultipleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult? Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult? Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
  }) {
    return quizMultipleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseTestTaskMetaDigitalInk value)? digitalInk,
    TResult Function(_CourseTestTaskMetaQuiz value)? quiz,
    TResult Function(_CourseTestTaskMetaQuizMultipleChoice value)?
        quizMultipleChoice,
    required TResult orElse(),
  }) {
    if (quizMultipleChoice != null) {
      return quizMultipleChoice(this);
    }
    return orElse();
  }
}

abstract class _CourseTestTaskMetaQuizMultipleChoice
    implements CourseTestTaskMeta {
  factory _CourseTestTaskMetaQuizMultipleChoice(
          {required final List<CourseTestTaskAnswer> answer}) =
      _$CourseTestTaskMetaQuizMultipleChoiceImpl;

  List<CourseTestTaskAnswer> get answer;
  @JsonKey(ignore: true)
  _$$CourseTestTaskMetaQuizMultipleChoiceImplCopyWith<
          _$CourseTestTaskMetaQuizMultipleChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

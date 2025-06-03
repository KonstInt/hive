import 'package:equatable/equatable.dart';

sealed class AnswerModel extends Equatable {
  const AnswerModel();

  @override
  List<Object?> get props => [];
}

final class SingleChoiceAnswer extends AnswerModel {
  final String answer;

  const SingleChoiceAnswer(this.answer);

  @override
  List<Object?> get props => [answer];
}

final class MultipleChoiceAnswer extends AnswerModel {
  final List<String> answers;

  const MultipleChoiceAnswer(this.answers);

  @override
  List<Object?> get props => [answers];
}

final class TextInputAnswer extends AnswerModel {
  final String text;

  const TextInputAnswer(this.text);

  @override
  List<Object?> get props => [text];
}

final class DigitalInkAnswer extends AnswerModel {
  final List<Map<String, dynamic>> strokes;
  final String recognizedText;

  const DigitalInkAnswer(
    this.strokes,
    this.recognizedText,
  );

  @override
  List<Object?> get props => [strokes];
}

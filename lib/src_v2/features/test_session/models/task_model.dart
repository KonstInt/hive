enum QuestionType { text, html, image, tts }

enum AnswerType { singleChoice, multipleChoice, inputText, digitalInk }

sealed class RightAnswer {
  const RightAnswer();
}

class SingleChoiceAnswer extends RightAnswer {
  final String answer;
  const SingleChoiceAnswer(this.answer);
}

class MultipleChoiceAnswer extends RightAnswer {
  final List<String> answers;
  const MultipleChoiceAnswer(this.answers);
}

class InputTextAnswer extends RightAnswer {
  final String answer;
  const InputTextAnswer(this.answer);
}

class DigitalInkAnswer extends RightAnswer {
  final String inkData;
  const DigitalInkAnswer(this.inkData);
}

class TaskModel {
  final String id;
  final QuestionType questionType;
  final String questionContent;
  final AnswerType answerType;
  final List<String> options;
  final RightAnswer rightAnswer;

  const TaskModel({
    required this.id,
    required this.questionType,
    required this.questionContent,
    required this.answerType,
    this.options = const [],
    required this.rightAnswer,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    final answerType = AnswerType.values.firstWhere(
      (e) => e.toString() == 'AnswerType.${json['answerType']}',
    );

    RightAnswer parseRightAnswer(dynamic answer) {
      switch (answerType) {
        case AnswerType.singleChoice:
          return SingleChoiceAnswer(answer as String);
        case AnswerType.multipleChoice:
          return MultipleChoiceAnswer((answer as List<dynamic>).cast<String>());
        case AnswerType.inputText:
          return InputTextAnswer(answer as String);
        case AnswerType.digitalInk:
          return DigitalInkAnswer(answer as String);
      }
    }

    return TaskModel(
      id: json['id'] as String,
      questionType: QuestionType.values.firstWhere(
        (e) => e.toString() == 'QuestionType.${json['questionType']}',
      ),
      questionContent: json['questionContent'] as String,
      answerType: answerType,
      options: (json['options'] as List<dynamic>?)?.cast<String>() ?? [],
      rightAnswer: parseRightAnswer(json['rightAnswer']),
    );
  }

  Map<String, dynamic> toJson() {
    dynamic serializeRightAnswer(RightAnswer answer) {
      return switch (answer) {
        SingleChoiceAnswer a => a.answer,
        MultipleChoiceAnswer a => a.answers,
        InputTextAnswer a => a.answer,
        DigitalInkAnswer a => a.inkData,
      };
    }

    return {
      'id': id,
      'questionType': questionType.toString().split('.').last,
      'questionContent': questionContent,
      'answerType': answerType.toString().split('.').last,
      'options': options,
      'rightAnswer': serializeRightAnswer(rightAnswer),
    };
  }
}

import 'package:flutter/material.dart';
import '../models/task_model.dart' as task_model;
import '../models/answer_model.dart' as answer_model;
import 'digital_ink_recogniser.dart';

class AnswerWidget extends StatelessWidget {
  final task_model.TaskModel task;
  final Function(answer_model.AnswerModel) onAnswerChanged;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.AnswerModel? userAnswer;

  const AnswerWidget({
    super.key,
    required this.task,
    required this.onAnswerChanged,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
  });

  @override
  Widget build(BuildContext context) {
    switch (task.answerType) {
      case task_model.AnswerType.singleChoice:
        return SingleChoiceAnswerWidget(
          options: task.options,
          onAnswerChanged: onAnswerChanged,
          isAnswered: isAnswered,
          isCorrect: isCorrect,
          userAnswer: userAnswer as answer_model.SingleChoiceAnswer?,
          correctAnswer: task.rightAnswer as task_model.SingleChoiceAnswer,
        );
      case task_model.AnswerType.multipleChoice:
        return MultipleChoiceAnswerWidget(
          options: task.options,
          onAnswerChanged: onAnswerChanged,
          isAnswered: isAnswered,
          isCorrect: isCorrect,
          userAnswer: userAnswer as answer_model.MultipleChoiceAnswer?,
          correctAnswer: task.rightAnswer as task_model.MultipleChoiceAnswer,
        );
      case task_model.AnswerType.inputText:
        return TextInputAnswerWidget(
          onAnswerChanged: onAnswerChanged,
          isAnswered: isAnswered,
          isCorrect: isCorrect,
          userAnswer: userAnswer as answer_model.TextInputAnswer?,
          correctAnswer: task.rightAnswer as task_model.InputTextAnswer,
        );
      case task_model.AnswerType.digitalInk:
        return DigitalInkAnswerWidget(
          onAnswerChanged: onAnswerChanged,
          isAnswered: isAnswered,
          isCorrect: isCorrect,
          userAnswer: userAnswer as answer_model.DigitalInkAnswer?,
          correctAnswer: task.rightAnswer as task_model.DigitalInkAnswer,
        );
    }
  }
}

class SingleChoiceAnswerWidget extends StatefulWidget {
  final List<String> options;
  final Function(answer_model.AnswerModel) onAnswerChanged;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.SingleChoiceAnswer? userAnswer;
  final task_model.SingleChoiceAnswer correctAnswer;

  const SingleChoiceAnswerWidget({
    super.key,
    required this.options,
    required this.onAnswerChanged,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
    required this.correctAnswer,
  });

  @override
  State<SingleChoiceAnswerWidget> createState() =>
      _SingleChoiceAnswerWidgetState();
}

class _SingleChoiceAnswerWidgetState extends State<SingleChoiceAnswerWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        final isSelected = _selectedOption == option;
        final isCorrectOption = option == widget.correctAnswer.answer;
        final showValidation =
            widget.isAnswered && (isSelected || isCorrectOption);

        Color borderColor = Colors.grey.shade300;
        if (showValidation) {
          if (isSelected) {
            borderColor = widget.isCorrect ? Colors.green : Colors.red;
          } else if (isCorrectOption) {
            borderColor = Colors.green;
          }
        } else if (isSelected) {
          borderColor = Theme.of(context).colorScheme.primary;
        }

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor,
              width: 1.5,
            ),
          ),
          child: RadioListTile<String>(
            value: option,
            groupValue: _selectedOption,
            onChanged: widget.isAnswered
                ? null
                : (value) {
                    setState(() => _selectedOption = value);
                    widget.onAnswerChanged(
                      answer_model.SingleChoiceAnswer(value!),
                    );
                  },
            title: Text(option),
            activeColor: Theme.of(context).colorScheme.primary,
          ),
        );
      }).toList(),
    );
  }
}

class MultipleChoiceAnswerWidget extends StatefulWidget {
  final List<String> options;
  final Function(answer_model.AnswerModel) onAnswerChanged;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.MultipleChoiceAnswer? userAnswer;
  final task_model.MultipleChoiceAnswer correctAnswer;

  const MultipleChoiceAnswerWidget({
    super.key,
    required this.options,
    required this.onAnswerChanged,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
    required this.correctAnswer,
  });

  @override
  State<MultipleChoiceAnswerWidget> createState() =>
      _MultipleChoiceAnswerWidgetState();
}

class _MultipleChoiceAnswerWidgetState
    extends State<MultipleChoiceAnswerWidget> {
  final Set<String> _selectedOptions = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        final isSelected = _selectedOptions.contains(option);
        final isCorrectOption = widget.correctAnswer.answers.contains(option);
        final showValidation =
            widget.isAnswered && (isSelected || isCorrectOption);

        Color borderColor = Colors.grey.shade300;
        if (showValidation) {
          if (isSelected) {
            borderColor = widget.isCorrect
                ? Colors.green
                : widget.correctAnswer.answers.contains(option)
                    ? Colors.grey.shade600
                    : Colors.red;
          } else if (isCorrectOption) {
            borderColor = Colors.green;
          }
        } else if (isSelected) {
          borderColor = Theme.of(context).colorScheme.primary;
        }

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor,
              width: 1.5,
            ),
          ),
          child: CheckboxListTile(
            title: Text(option),
            value: isSelected,
            onChanged: widget.isAnswered
                ? null
                : (value) {
                    setState(() {
                      if (value == true) {
                        _selectedOptions.add(option);
                      } else {
                        _selectedOptions.remove(option);
                      }
                    });
                    widget.onAnswerChanged(
                      answer_model.MultipleChoiceAnswer(
                          _selectedOptions.toList()),
                    );
                  },
            activeColor: Theme.of(context).colorScheme.primary,
          ),
        );
      }).toList(),
    );
  }
}

class TextInputAnswerWidget extends StatefulWidget {
  final Function(answer_model.AnswerModel) onAnswerChanged;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.TextInputAnswer? userAnswer;
  final task_model.InputTextAnswer correctAnswer;

  const TextInputAnswerWidget({
    super.key,
    required this.onAnswerChanged,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
    required this.correctAnswer,
  });

  @override
  State<TextInputAnswerWidget> createState() => _TextInputAnswerWidgetState();
}

class _TextInputAnswerWidgetState extends State<TextInputAnswerWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          margin: const EdgeInsets.only(top: 8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _controller,
              enabled: !widget.isAnswered,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Введите ответ...',
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceVariant,
                errorText: widget.isAnswered && !widget.isCorrect
                    ? 'Правильный ответ: ${widget.correctAnswer.answer}'
                    : null,
              ),
              maxLines: null,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {
                widget.onAnswerChanged(
                  answer_model.TextInputAnswer(value.trim()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class DigitalInkAnswerWidget extends StatefulWidget {
  final Function(answer_model.AnswerModel) onAnswerChanged;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.DigitalInkAnswer? userAnswer;
  final task_model.DigitalInkAnswer correctAnswer;

  const DigitalInkAnswerWidget({
    super.key,
    required this.onAnswerChanged,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
    required this.correctAnswer,
  });

  @override
  State<DigitalInkAnswerWidget> createState() => DigitalInkAnswerWidgetState();
}

class DigitalInkAnswerWidgetState extends State<DigitalInkAnswerWidget> {
  final GlobalKey<InkRecognitionWidgetState> _inkKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return InkRecognitionWidget(
      key: _inkKey,
      languageCode: 'zh-Hani',
      isCorrect: widget.isCorrect,
      isAnswered: widget.isAnswered,
      userAnswer: widget.userAnswer?.recognizedText,
      rightAnswer: widget.correctAnswer.inkData,
      callback: ({required String recognizedText}) {
        widget.onAnswerChanged(
          answer_model.DigitalInkAnswer(
            widget.userAnswer?.strokes ?? [],
            recognizedText,
          ),
        );
      },
      isEnabled: !widget.isAnswered,
    );
  }

  Future<void> recognizeInk() async {
    await _inkKey.currentState?.recognizeInk();
  }
}

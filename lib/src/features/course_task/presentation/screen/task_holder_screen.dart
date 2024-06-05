import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/answer_typed_widget.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/digital_ink_widget.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/multi_quiz_widget.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/question_typed_widget.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/single_quiz_widger.dart';

class TaskHolderScreen extends StatelessWidget {
  const TaskHolderScreen({super.key, required this.task});
  final CourseTestTask task;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        task.map(
          quizTyped: (value) => Column(
            children: [
              QuestionTypedWidget(question: value.question),
              SingleQuizWidget(
                  options: value.answers
                      .map((e) => AnswerTypedWidget(answer: e))
                      .toList(),
                  correctIndex:
                      value.answers.indexWhere((x) => x == value.rightAnswer),
                  callback: ({required int selectedIndex}) {})
            ],
          ),
          multiChoiceQuizTyped: (value) => Column(
            children: [
              QuestionTypedWidget(question: value.question),
              MultiQuizWidget(
                  options: value.answers
                      .map((e) => AnswerTypedWidget(answer: e))
                      .toList(),
                  correctIndexes: value.rightAnswers
                      .map((e) => value.answers.indexOf(e))
                      .toList(),
                  callback: ({required List<int> selectedIndexes}) {})
            ],
          ),
          digitalInk: (value) => Column(
            children: [
              QuestionTypedWidget(question: value.question),
              InkRecognitionWidget(
                languageCode: value.languageCode,
                callback: ({required String recognizedText}) {},
                correctAnswer: value.rightAnswer,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

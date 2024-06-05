import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/question/course_test_task_question.dart';
import 'package:hive/src/features/course_task/presentation/screen/task_holder_screen.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseTestTaskQuestion question =
        CourseTestTaskQuestion.fromText(question: "Напишите на китайском символ который означает \"Свет\"");
    final String rightAnswer = '光';
    final String languageCode = 'zh-Hani';
    final CourseTestTask task = CourseTestTask.digitalInk(
        id: 'id',
        scores: 12,
        question: question,
        rightAnswer: rightAnswer,
        languageCode: languageCode);

    // final CourseTestTask task = CourseTestTask.quizTyped(
    //     id: 'id',
    //     scores: 12,
    //     question: question,
    //     rightAnswer: rightAnswer,
    //     languageCode: languageCode);

    // final CourseTestTaskQuestion question = CourseTestTaskQuestion.fromText(
    //     question: "Что означает этот символ",
    //     imageUrl:
    //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZDysNKGJB6SxiCJXp_2bAOBfcIHV2c7qlmQ&s');
    // final List<CourseTestTaskAnswer> answers = [
    //   CourseTestTaskAnswer.fromText(text: 'Машина'),
    //   CourseTestTaskAnswer.fromText(text: 'Китаец'),
    //   CourseTestTaskAnswer.fromText(text: 'Брат'),
    //   CourseTestTaskAnswer.fromText(text: 'Рожденный')
    // ];
    // final CourseTestTaskAnswer rightAnswer =
    //     CourseTestTaskAnswer.fromText(text: 'Рожденный');
    // final String languageCode = 'zh-Hani';
    // final CourseTestTask task = CourseTestTask.quizTyped(
    //   id: 'id',
    //   scores: 12,
    //   question: question,
    //   answers: answers,
    //   rightAnswer: rightAnswer,
    // );

    // final CourseTestTaskQuestion question = CourseTestTaskQuestion.fromText(
    //   question: "Выбирете все что является китайскими символами",
    // );
    // final List<CourseTestTaskAnswer> answers = [
    //   CourseTestTaskAnswer.fromImage(
    //       imageUrl: 'https://cdn-icons-png.flaticon.com/512/6457/6457951.png'),
    //   CourseTestTaskAnswer.fromImage(
    //       imageUrl:
    //           'https://hanzishi.ru/app/uploads/2022/05/kitajskij-ieroglif-sila.jpg'),
    //   CourseTestTaskAnswer.fromText(text: '光')
    // ];
    // final List<CourseTestTaskAnswer> rightAnswer = [
    //   CourseTestTaskAnswer.fromImage(
    //       imageUrl:
    //           'https://hanzishi.ru/app/uploads/2022/05/kitajskij-ieroglif-sila.jpg'),
    //   CourseTestTaskAnswer.fromText(text: '光')
    // ];

    // final CourseTestTask task = CourseTestTask.multiChoiceQuizTyped(
    //   id: 'id',
    //   scores: 12,
    //   question: question,
    //   answers: answers,
    //   rightAnswers: rightAnswer,
    // );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: context.colors.baseText),
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Text(
            'Задание 1',
            style: context.textStyles.headlineB
                .copyWith(color: context.colors.baseText),
          ),
        ),
        body: Column(
          children: [
            TaskHolderScreen(task: task),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: context.colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Далее',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/course_task/data/models/answer/api_course_test_task_answer.dart';
import 'package:hive/src/features/course_task/data/models/course_test/api_course_test_task.dart';
import 'package:hive/src/features/course_task/data/models/meta/api_course_test_task_meta.dart';
import 'package:hive/src/features/course_task/data/models/question/api_course_test_task_question.dart';
import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';
import 'package:hive/src/features/course_task/domain/models/question/course_test_task_question.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseTestTaskMapper {
  CourseTestTask taskFromApi({required ApiCourseTestTask model}) {
    return model.map(
        quizTyped: (e) => CourseTestTask.quizTyped(
            id: e.id,
            scores: e.scores,
            question: _questionFromApi(e.question),
            answers: e.answers.map((x) => _answerFromApi(x)).toList(),
            rightAnswer: _answerFromApi(e.rightAnswer)),
        multiChoiceQuizTyped: (e) => CourseTestTask.multiChoiceQuizTyped(
            id: e.id,
            scores: e.scores,
            question: _questionFromApi(e.question),
            answers: e.answers.map((x) => _answerFromApi(x)).toList(),
            rightAnswers:
                e.rightAnswers.map((x) => _answerFromApi(x)).toList()),
        digitalInk: (e) => CourseTestTask.digitalInk(
            id: e.id,
            scores: e.scores,
            question: _questionFromApi(e.question),
            rightAnswer: e.rightAnswer,
            languageCode: e.languageCode));
  }

  CourseTestTaskQuestion _questionFromApi(ApiCourseTestTaskQuestion question) {
    return question.map(
      fromText: (e) => CourseTestTaskQuestion.fromText(
          question: e.question, imageUrl: e.imageUrl),
      fromHTML: (e) => CourseTestTaskQuestion.fromHTML(htmlCode: e.htmlCode),
      fromImage: (e) => CourseTestTaskQuestion.fromImage(imageUrl: e.imageUrl),
    );
  }

  CourseTestTaskAnswer _answerFromApi(ApiCourseTestTaskAnswer answer) {
    return answer.map(
      fromText: (e) => CourseTestTaskAnswer.fromText(text: e.text),
      fromHTML: (e) => CourseTestTaskAnswer.fromHTML(htmlCode: e.htmlCode),
      fromImage: (e) => CourseTestTaskAnswer.fromImage(imageUrl: e.imageUrl),
    );
  }

  ApiCourseTestTask taskToApi({required CourseTestTask model}) {
    return model.map(
        quizTyped: (e) => ApiCourseTestTask.quizTyped(
              id: e.id,
              scores: e.scores,
              question: _questionToApi(e.question),
              answers: e.answers.map((x) => _answerToApi(x)).toList(),
              rightAnswer: _answerToApi(e.rightAnswer),
            ),
        multiChoiceQuizTyped: (e) => ApiCourseTestTask.multiChoiceQuizTyped(
            id: e.id,
            scores: e.scores,
            question: _questionToApi(e.question),
            answers: e.answers.map((x) => _answerToApi(x)).toList(),
            rightAnswers: e.rightAnswers.map((x) => _answerToApi(x)).toList()),
        digitalInk: (e) => ApiCourseTestTask.digitalInk(
            id: e.id,
            scores: e.scores,
            question: _questionToApi(e.question),
            rightAnswer: e.rightAnswer,
            languageCode: e.languageCode));
  }

  ApiCourseTestTaskQuestion _questionToApi(CourseTestTaskQuestion question) {
    return question.map(
      fromText: (e) => ApiCourseTestTaskQuestion.fromText(
          question: e.question, imageUrl: e.imageUrl),
      fromHTML: (e) => ApiCourseTestTaskQuestion.fromHTML(htmlCode: e.htmlCode),
      fromImage: (e) =>
          ApiCourseTestTaskQuestion.fromImage(imageUrl: e.imageUrl),
    );
  }

  ApiCourseTestTaskAnswer _answerToApi(CourseTestTaskAnswer answer) {
    return answer.map(
      fromText: (e) => ApiCourseTestTaskAnswer.fromText(text: e.text),
      fromHTML: (e) => ApiCourseTestTaskAnswer.fromHTML(htmlCode: e.htmlCode),
      fromImage: (e) => ApiCourseTestTaskAnswer.fromImage(imageUrl: e.imageUrl),
    );
  }

  ApiCourseTestTaskMeta metaToApi(CourseTestTaskMeta meta) {
    return meta.map(
      digitalInk: (e) => ApiCourseTestTaskMeta.digitalInk(
          ink: e.ink.toJson().toString(), recognition: e.recognition),
      quiz: (e) => ApiCourseTestTaskMeta.quiz(
        answer: _answerToApi(e.answer),
      ),
      quizMultipleChoice: (e) => ApiCourseTestTaskMeta.quizMultipleChoice(
        answer: e.answer.map((x) => _answerToApi(x)).toList(),
      ),
    );
  }

  CourseTestTaskMeta metaFromApi(ApiCourseTestTaskMeta meta) {
    return meta.map(
      digitalInk: (e) => CourseTestTaskMeta.digitalInk(
          //TODO:from json
          ink: Ink(),
          recognition: e.recognition),
      quiz: (e) => CourseTestTaskMeta.quiz(
        answer: _answerFromApi(e.answer),
      ),
      quizMultipleChoice: (e) => CourseTestTaskMeta.quizMultipleChoice(
        answer: e.answer.map((x) => _answerFromApi(x)).toList(),
      ),
    );
  }
}

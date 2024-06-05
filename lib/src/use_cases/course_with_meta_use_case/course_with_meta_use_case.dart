import 'dart:async';

import 'package:hive/src/use_cases/course_with_meta_use_case/models/courses_info/courses_info.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/models/tasks_info/task_info.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/models/tests_info/tests_info.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseWithMetaUseCase {
  CoursesInfo? _courses;
  TestsInfo? _tests;
  TaskInfo? _tasks;
  final StreamController<CoursesInfo> _coursesInfoController;
  final StreamController<TestsInfo> _testsInfoController;
  final StreamController<TaskInfo> _tasksInfoController;

  CourseWithMetaUseCase()
      : _coursesInfoController = StreamController.broadcast(),
        _testsInfoController = StreamController.broadcast(),
        _tasksInfoController = StreamController.broadcast();
  void updateTasks(TaskInfo tasks) {
    _tasks = tasks;
    _tasksInfoController.add(tasks);
  }

  void updateTests(TestsInfo tests) {
    _tests = tests;
    _testsInfoController.add(tests);
  }

  void updateCourses(CoursesInfo courses) {
    _courses = courses;
    _coursesInfoController.add(courses);
  }

  void closeStreams() {
    _coursesInfoController.close();
    _testsInfoController.close();
    _tasksInfoController.close();
  }

  Stream<CoursesInfo> get courseBroadcast => _coursesInfoController.stream;
  Stream<TestsInfo> get testsBroadcast => _testsInfoController.stream;
  Stream<TaskInfo> get tasksBroadcast => _tasksInfoController.stream;
  CoursesInfo? get courseInfo => _courses;
  TestsInfo? get testsInfo => _tests;
  TaskInfo? get tasksInfo => _tasks;
}

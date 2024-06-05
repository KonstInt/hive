import 'dart:async';

import 'package:hive/src/use_cases/updating_data_use_case/models/course_info_update/course_info_update.dart';
import 'package:hive/src/use_cases/updating_data_use_case/models/test_info_update/test_info_update.dart';
import 'package:injectable/injectable.dart';

@singleton
class MetaUpdatingDataUseCase {
  final StreamController<CourseInfoUpdate> _updateCourseController;
  final StreamController<TestInfoUpdate> _updateTestController;
  MetaUpdatingDataUseCase()
      : _updateCourseController = StreamController.broadcast(),
        _updateTestController = StreamController.broadcast();
  void updateCourseMeta(CourseInfoUpdate course) {
    _updateCourseController.add(course);
  }

  void updateTestMeta(TestInfoUpdate test) {
    _updateTestController.add(test);
  }

  Stream<CourseInfoUpdate> get updateCourseBroadcast =>
      _updateCourseController.stream;
  Stream<TestInfoUpdate> get updateTestBroadcast =>
      _updateTestController.stream;
}

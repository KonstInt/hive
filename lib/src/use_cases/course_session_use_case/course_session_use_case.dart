import 'dart:async';

import 'package:hive/src/use_cases/course_session_use_case/models/course_session_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseSessionUseCase {
  final StreamController<CourseSessionModel> _courseSessionStreamController;
  late CourseSessionModel _session;
  CourseSessionUseCase()
      : _courseSessionStreamController =
            StreamController<CourseSessionModel>.broadcast(),
        _session = CourseSessionModel(
          courseId: null,
          testId: null,
          taskId: null,
        );

  void updateSession(CourseSessionModel session) {
    _session = session;
    _courseSessionStreamController.add(session);
  }

  void clearSession() {
    _session = CourseSessionModel(
      courseId: null,
      testId: null,
      taskId: null,
    );
    _courseSessionStreamController.add(_session);
  }

  void closeStream() {
    _courseSessionStreamController.close();
  }

  Stream<CourseSessionModel> get broadcast =>
      _courseSessionStreamController.stream;
  CourseSessionModel get session => _session;
}

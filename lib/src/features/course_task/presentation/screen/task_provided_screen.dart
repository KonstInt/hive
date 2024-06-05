import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/presentation/bloc/task/course_test_task_bloc.dart';
import 'package:hive/src/features/course_task/presentation/screen/task_holder_screen.dart';

class TaskProvidedScreen extends StatelessWidget {
  const TaskProvidedScreen(
      {super.key, required this.taskId, required this.meta});
  final String taskId;
  final String? meta;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<CourseTestTaskBloc>()
        ..add(
          CourseTestTaskEvent.getCurrentTask(
            taskId: taskId,
            meta: meta,
          ),
        ),
      child: BlocBuilder<CourseTestTaskBloc, CourseTestTaskState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Placeholder(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (value) => TaskHolderScreen(task: value.task),
            error: (_) => const Center(
              child: Text('error'),
            ),
          );
        },
      ),
    );
  }
}

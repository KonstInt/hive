import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../../di/course_tests_provider.dart';
import '../../di/course_tests_scope.dart';
import '../../domain/models/course_test_model.dart';
import '../bloc/course_tests_bloc.dart';

class CourseTestListView extends StatelessWidget {
  final String courseId;

  const CourseTestListView({
    super.key,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return CourseTestsProvider(
      courseId: courseId,
      child: ScopeBuilder<CourseTestsContainer>.withPlaceholder(
        builder: (context, scope) => BlocBuilder<CourseTestsBloc, CourseTestsState>(
          bloc: scope.courseTestsBloc.get,
          builder: (context, state) {
            return switch (state) {
              CourseTestsInitial() => const SizedBox.shrink(),
              CourseTestsLoading() => const Center(child: CircularProgressIndicator()),
              CourseTestsError(message: final msg) =>
                Center(child: Text('Ошибка: $msg')),
              CourseTestsLoaded(tests: final tests, hasMore: final hasMore) =>
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: tests.length + (hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == tests.length) {
                      return Center(
                        child: TextButton(
                          onPressed: () {
                            context.read<CourseTestsBloc>().add(const LoadMoreEvent());
                          },
                          child: const Text('Показать ещё'),
                        ),
                      );
                    }
                    final test = tests[index];
                    return _CourseTestCard(test: test, courseId: courseId);
                  },
                ),
            };
          },
        ),
      ),
    );
  }
}

class _CourseTestCard extends StatelessWidget {
  final CourseTestModel test;
  final String courseId;

  const _CourseTestCard({
    required this.test,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(test.testState == TestState.completed) {
      
          return;
        }
        context.goNamed(
          'test_session',
          pathParameters: {
            'testID': test.id,
            'courseID': courseId,
          },
          extra: courseId,
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              if (test.imageUrl != null)
                CircleAvatar(
                  backgroundImage: NetworkImage(test.imageUrl!),
                  radius: 28,
                )
              else
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  child: const Icon(Icons.description_outlined),
                ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      test.description,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: test.progressPercentage / 100,
                        minHeight: 6,
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .surfaceVariant,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Выполнено: ${test.taskCompleted}/${test.taskCount}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              _buildStateIcon(test.testState),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStateIcon(TestState state) {
    switch (state) {
      case TestState.notStarted:
        return const Icon(Icons.play_circle_outline, size: 28);
      case TestState.inProgress:
        return const Icon(Icons.pause_circle_outline, size: 28);
      case TestState.completed:
        return const Icon(Icons.check_circle_outline, color: Colors.green, size: 28);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/courses/full_screen_courses/di/full_screen_course_provider.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../../di/full_screen_course_scope.dart';
import '../bloc/full_course_bloc.dart';
import '../widgets/full_course_sliver_app_bar.dart';
import '../../../../tests/course_tests/presentation/widgets/course_test_list_view.dart';

class FullScreenCourseScreen extends StatelessWidget {
  final String courseId;

  const FullScreenCourseScreen({
    super.key,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return FullScreenCourseProvider(
      courseId: courseId,
      child: ScopeBuilder<FullScreenCourseContainer>.withPlaceholder(
        builder: (context, fullScreenScope) =>
            BlocProvider<FullCourseBloc>.value(
          value: fullScreenScope.fullCourseBloc.get..add(RefreshEvent()),
          child: FullScreenCourseScreenView(courseId: courseId),
        ),
      ),
    );
  }
}

class FullScreenCourseScreenView extends StatelessWidget {
  final String courseId;

  const FullScreenCourseScreenView({
    required this.courseId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FullCourseBloc, FullCourseState>(
      builder: (context, state) {
        return switch (state) {
          FullCourseInitial() => const SizedBox.shrink(),
          FullCourseLoading() =>
            const Center(child: CircularProgressIndicator()),
          FullCourseError(message: final msg) =>
            Center(child: Text('Ошибка: $msg')),
          FullCourseLoaded(course: final course) => CustomScrollView(
              slivers: [
                FullCourseSliverAppBar(course: course),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.fullDescription,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 20),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: course.tags
                              .map(
                                (tag) => Chip(
                                  label: Text(tag),
                                  backgroundColor: context.colors.baseText,
                                  labelStyle: TextStyle(
                                    color: context.colors.inverseText,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Прогресс по курсу',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: LinearProgressIndicator(
                            value: course.currentPoints/ course.maxPoints,
                            minHeight: 8,
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            valueColor: AlwaysStoppedAnimation(
                              context.colors.baseText,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${course.currentPoints} из ${course.maxPoints} баллов',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Тесты',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: CourseTestListView(
                    courseId: courseId,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
              ],
            ),
        };
      },
    );
  }
}

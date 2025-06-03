import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/courses/my_courses/di/my_courses_di.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../di/my_courses_provider.dart';
import '../domain/bloc/my_courses_bloc.dart';
import '../domain/models/course_model.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCoursesProvider(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Мои курсы'),
          actions: [
            ScopeBuilder<MyCoursesContainer>.withPlaceholder(
              builder: (context, scope) => IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  scope.myCoursesBloc.get.add(const RefreshEvent());
                },
              ),
            ),
          ],
        ),
        body: ScopeBuilder<MyCoursesContainer>.withPlaceholder(
          builder: (context, scope) {
            return BlocBuilder<MyCoursesBloc, MyCoursesState>(
              bloc: scope.myCoursesBloc.get,
              builder: (context, state) {
                return switch (state) {
                  MyCoursesInitial() => const SizedBox.shrink(),
                  MyCoursesLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  MyCoursesError(message: final message) => Center(
                      child: Text('Ошибка: $message',
                          style: const TextStyle(color: Colors.red)),
                    ),
                  MyCoursesLoaded(:final courses) =>
                    _CoursesList(courses: courses),
                };
              },
            );
          },
        ),
      ),
    );
  }
}

class _CoursesList extends StatelessWidget {
  final List<CourseModel> courses;

  const _CoursesList({required this.courses});

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const Center(child: Text('Нет доступных курсов'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];

        return InkWell(
          onTap: () => context.goNamed(
            'fullscreen_course',
            pathParameters: {'courseID': course.id},
          ),
          borderRadius: BorderRadius.circular(16),
          child: Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (course.imageUrl != null)
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        course.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Container(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: const Center(child: Icon(Icons.broken_image)),
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        course.shortDescription,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      if (course.tags.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: course.tags.map((tag) {
                            return Chip(
                              label: Text(tag),
                              backgroundColor: context.colors.baseText,
                              labelStyle: TextStyle(
                                color: context.colors.inverseText,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                      const SizedBox(height: 16),
                      LinearProgressIndicator(
                        value: course.progressPercentage / 100,
                        backgroundColor:
                            Theme.of(context).colorScheme.surfaceVariant,
                        valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.primary),
                        minHeight: 6,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Прогресс: ${course.progressPercentage.toStringAsFixed(1)}%',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'Баллы: ${course.currentPoints}/${course.maxPoints}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

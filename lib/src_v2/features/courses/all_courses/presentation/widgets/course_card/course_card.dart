import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/bloc/courses_bloc.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class CourseCard extends StatelessWidget {
  final ShortCourse course;
  final CoursesBloc bloc;

  const CourseCard({
    super.key,
    required this.course,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (course.imageUrl != null)
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                course.imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  child: const Center(
                    child: Icon(Icons.image_not_supported),
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
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  course.shortDescription,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Max points: ${course.maxPoints}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                    FilledButton(
                      onPressed: course.isEnrolled
                          ? null
                          : () => bloc.add(EnrollInCourse(course.id)),
                      child: Text(course.isEnrolled ? 'Уже записаны' : 'Записаться'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

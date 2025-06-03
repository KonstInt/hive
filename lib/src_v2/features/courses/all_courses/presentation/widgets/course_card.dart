import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import '../bloc/courses_bloc.dart';

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
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              course.shortDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            if (course.tags.isNotEmpty) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: course.tags.map((tag) {
                  return Chip(
                    label: Text(tag),
                    backgroundColor:
                        context.colors.baseText,
                    labelStyle: TextStyle(
                      color:
                          context.colors.inverseText,
                    ),
                  );
                }).toList(),
              ),
            ],
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Макс. баллов: ${course.maxPoints}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                ElevatedButton(
                  onPressed: course.isEnrolled
                      ? null
                      : () => bloc.add(EnrollInCourse(course.id)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    minimumSize: const Size(100, 42),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(course.isEnrolled ? 'Вы записаны' : 'Записаться'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

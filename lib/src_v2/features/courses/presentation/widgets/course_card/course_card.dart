import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/presentation/bloc/courses_bloc.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final CoursesBloc bloc;

  const CourseCard({
    super.key,
    required this.course,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              course.shortDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: course.tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Max points: ${course.maxPoints}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                ElevatedButton(
                  onPressed: course.isEnrolled
                      ? null
                      : () => bloc.add(EnrollInCourse(course.id)),
                  child: Text(course.isEnrolled ? 'Enrolled' : 'Enroll'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

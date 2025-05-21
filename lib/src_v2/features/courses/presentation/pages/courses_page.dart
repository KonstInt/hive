import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/courses_bloc.dart';
import '../../domain/entities/course.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.instance<CoursesBloc>()..add(const CoursesEvent.loadCourses()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('All Courses'),
        ),
        body: BlocBuilder<CoursesBloc, CoursesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (state) => Center(child: Text(state.message)),
              loaded: (state) => _CoursesList(courses: state.courses),
            );
          },
        ),
      ),
    );
  }
}

class _CoursesList extends StatelessWidget {
  final List<Course> courses;

  const _CoursesList({required this.courses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: () {
              // Navigate to course details
              Navigator.pushNamed(context, '/courses/${course.id}');
            },
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
                    children: course.tags
                        .map((tag) => Chip(
                              label: Text(tag),
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star_border),
                      const SizedBox(width: 8),
                      Text('${course.maxPoints} points'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

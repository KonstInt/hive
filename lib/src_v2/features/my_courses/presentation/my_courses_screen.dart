import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/bloc/my_courses_bloc.dart';
import '../domain/models/course_model.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Courses'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<MyCoursesBloc>().add(const RefreshEvent());
            },
          ),
        ],
      ),
      body: BlocBuilder<MyCoursesBloc, MyCoursesState>(
        builder: (context, state) {
          return switch (state) {
            MyCoursesInitial() => const SizedBox(),
            MyCoursesLoading() =>
              const Center(child: CircularProgressIndicator()),
            MyCoursesLoaded(:final courses) => _CoursesList(courses: courses),
            MyCoursesError(:final message) => Center(
                child: SelectableText.rich(
                  TextSpan(
                    text: 'Error: ',
                    style: const TextStyle(color: Colors.red),
                    children: [
                      TextSpan(
                        text: message,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
          };
        },
      ),
    );
  }
}

class _CoursesList extends StatelessWidget {
  final List<CourseModel> courses;

  const _CoursesList({Key? key, required this.courses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const Center(
        child: Text('No courses found'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
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
                Text(course.shortDescription),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  children:
                      course.tags.map((tag) => Chip(label: Text(tag))).toList(),
                ),
                const SizedBox(height: 16),
                LinearProgressIndicator(value: course.progressPercentage / 100),
                const SizedBox(height: 8),
                Text(
                  'Progress: ${course.progressPercentage.toStringAsFixed(1)}%',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  'Points: ${course.currentPoints}/${course.maxPoints}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

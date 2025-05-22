import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/courses/presentation/bloc/courses_bloc.dart';

class CoursesSearchBar extends StatelessWidget {
  final CoursesBloc bloc;

  const CoursesSearchBar({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search courses...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (query) => bloc.add(SearchCourses(query)),
      ),
    );
  }
}

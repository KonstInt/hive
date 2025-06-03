import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/bloc/courses_bloc.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class CoursesSearchBar extends StatefulWidget {
  final CoursesBloc bloc;

  const CoursesSearchBar({
    super.key,
    required this.bloc,
  });

  @override
  State<CoursesSearchBar> createState() => _CoursesSearchBarState();
}

class _CoursesSearchBarState extends State<CoursesSearchBar> {
  late final TextEditingController _searchController;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.baseText,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Поиск по курсам...',
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            onPressed: () {
              widget.bloc.add(const SearchCourses(''));
              _searchController.clear();
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onChanged: (query) => widget.bloc.add(
          SearchCourses(query),
        ),
        controller: _searchController,
      ),
    );
  }
}

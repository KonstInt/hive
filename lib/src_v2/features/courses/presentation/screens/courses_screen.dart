import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/courses/presentation/bloc/courses_bloc.dart';
import 'package:hive/src_v2/features/courses/presentation/widgets/course_card/course_card.dart';
import 'package:hive/src_v2/features/courses/presentation/widgets/error_view/error_view.dart';
import 'package:hive/src_v2/features/courses/presentation/widgets/loading_shimmer/loading_shimmer.dart';
import 'package:hive/src_v2/features/courses/presentation/widgets/search_bar/courses_search_bar.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../di/sign_in_scope.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({
    super.key,
  });

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, authContainer) {
        return ScopeProvider(
          holder: CoursesScopeHolder(
            authInteractor: authContainer.authInteractor.get,
          ),
          child: ScopeBuilder<CoursesContainer>.withPlaceholder(
            builder: (context, coursesContainer) {
              return BlocProvider.value(
                value: coursesContainer.coursesBloc.get,
                child: BlocBuilder<CoursesBloc, CoursesState>(
                  builder: (context, state) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Courses'),
                      ),
                      body: Column(
                        children: [
                          CoursesSearchBar(
                            bloc: coursesContainer.coursesBloc.get,
                          ),
                          Expanded(
                            child: switch (state) {
                              CoursesInitial() => const SizedBox.shrink(),
                              CoursesLoading() => const LoadingShimmer(),
                              CoursesError() => ErrorView(
                                  message: state.message,
                                  onRetry: () =>
                                      coursesContainer.coursesBloc.get.add(
                                    const LoadCourses(),
                                  ),
                                ),
                              CoursesData() => ListView.builder(
                                  itemCount: state.filteredCourses.length,
                                  itemBuilder: (context, index) {
                                    return CourseCard(
                                      course: state.filteredCourses[index],
                                      bloc: coursesContainer.coursesBloc.get,
                                    );
                                  },
                                ),
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}

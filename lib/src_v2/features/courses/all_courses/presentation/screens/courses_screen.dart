import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/bloc/courses_bloc.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/widgets/course_card/course_card.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/widgets/error_view/error_view.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/widgets/loading_shimmer/loading_shimmer.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/widgets/search_bar/courses_search_bar.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../di/sign_in_scope.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, authContainer) => _CoursesScreen(
        authInteractor: authContainer.authInteractor.get,
      ),
    );
  }
}

class _CoursesScreen extends StatefulWidget {
  final AuthInteractor authInteractor;

  const _CoursesScreen({
    required this.authInteractor,
  });

  @override
  State<_CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<_CoursesScreen> {
  late final CoursesScopeHolder _coursesScopeHolder;

  @override
  void initState() {
    _coursesScopeHolder = CoursesScopeHolder(
      authInteractor: widget.authInteractor,
    );
    _coursesScopeHolder.create();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, authContainer) {
        return ScopeProvider<CoursesContainer>(
          holder: _coursesScopeHolder,
          child: ScopeBuilder<CoursesContainer>.withPlaceholder(
            builder: (context, coursesContainer) {
              return BlocBuilder<CoursesBloc, CoursesState>(
                bloc: coursesContainer.coursesBloc.get,
                builder: (context, state) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Каталог курсов'),
                    ),
                    body: Column(
                      children: [
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
                            CoursesData() => RefreshIndicator(
                                onRefresh: () async {
                                  coursesContainer.coursesBloc.get.add(
                                    const LoadCourses(),
                                  );
                                },
                                child: SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: CoursesSearchBar(
                                          bloc:
                                              coursesContainer.coursesBloc.get,
                                        ),
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: state.filteredCourses.length,
                                        itemBuilder: (context, index) {
                                          return CourseCard(
                                            course:
                                                state.filteredCourses[index],
                                            bloc: coursesContainer
                                                .coursesBloc.get,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _coursesScopeHolder.drop();
    super.dispose();
  }
}

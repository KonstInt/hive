import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class UserCoursesScreen extends StatelessWidget {
  final List<Course> userCourses =[ Course(
          title: '«Работа» на китайском\n языке',
          tags: ['бизнес', 'китай'],
          shortDescription: 'Изучите базис который вам потребуется на любой работе в китае',
          progressPercentage: 75.6,
          currentPoints: 150,
          maxPoints: 200,
        ),
        Course(
          title: 'Едим в Китае',
          tags: ['еда', 'повседневное'],
          shortDescription: 'Выучите лексику для того чтобы не упасть в грязь в ресторане',
          progressPercentage: 50.0,
          currentPoints: 100,
          maxPoints: 200,
        )];

  UserCoursesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Мои Курсы', style: context.textStyles.headlineB.copyWith(color: context.colors.baseText)),
      ),
      body: ListView.builder(
        itemCount: userCourses.length,
        itemBuilder: (context, index) {
          final course = userCourses[index];
          return GestureDetector(
            onTap: () => context.go('/home/course_details/${1}'),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.pink[30],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.title,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Теги: ${course.tags.join(', ')}',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Описание: ${course.shortDescription}',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            '${course.progressPercentage}%',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Text(
                          '${course.currentPoints} / ${course.maxPoints}',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Course {
  final String title;
  final List<String> tags;
  final String shortDescription;
  final double progressPercentage;
  final int currentPoints;
  final int maxPoints;

  Course({
    required this.title,
    required this.tags,
    required this.shortDescription,
    required this.progressPercentage,
    required this.currentPoints,
    required this.maxPoints,
  });
}

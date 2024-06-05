import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class CoursesScreen extends StatefulWidget {
  final List<Course> availableCourses = [
    Course(
      title: 'Иероглифы 2.0',
      tags: ['лексика', 'граммматика'],
      shortDescription: 'Изучаем поэтапно как писать трудные иероглифы',
      isEnrolled: false,
    ),
    Course(
      title: '«Работа» на китайском\n языке',
      tags: ['бизнес', 'китай'],
      shortDescription:
          'Изучите базис который вам потребуется на любой работе в китае',
      isEnrolled: true,
    ),
    Course(
      title: 'Едим в Китае',
      tags: ['еда', 'повседневное'],
      shortDescription:
          'Выучите лексику для того чтобы не упасть в грязь в ресторане',
      isEnrolled: true,
    ),
  ];

  CoursesScreen();

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  List<Course> filteredCourses = [];

  @override
  void initState() {
    super.initState();
    filteredCourses = widget.availableCourses;
  }

  void _filterCourses(String query) {
    final filtered = widget.availableCourses.where((course) {
      final titleLower = course.title.toLowerCase();
      final descriptionLower = course.shortDescription.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          descriptionLower.contains(searchLower);
    }).toList();

    setState(() {
      filteredCourses = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Доступные Курсы',
          style: context.textStyles.headlineB
              .copyWith(color: context.colors.baseText),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск курсов...',
                prefixIcon: Icon(Icons.search, color: context.colors.baseText,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: _filterCourses,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCourses.length,
              itemBuilder: (context, index) {
                final course = filteredCourses[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.pink[30],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
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
                          SizedBox(height: 16.0),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  disabledBackgroundColor: context.colors.disabled,
                                  disabledForegroundColor: context.colors.white,
                                  backgroundColor: Colors.blue,
                                  foregroundColor: context.colors.inverseText,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 12.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  
                                  ),
                                ),
                                child: Text(
                                  course.isEnrolled ? 'Записан' : 'Записаться',
                                  style: TextStyle(fontSize: 16),
                                ),
                                onPressed: course.isEnrolled
                                    ? null
                                    : () {
                                        // Логика записи на курс
                                      },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Course {
  final String title;
  final List<String> tags;
  final String shortDescription;
  final bool isEnrolled;

  Course({
    required this.title,
    required this.tags,
    required this.shortDescription,
    required this.isEnrolled,
  });
}

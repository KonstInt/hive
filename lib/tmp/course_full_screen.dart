import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class CourseDetailScreen extends StatelessWidget {
  final Course course = Course(
    title: '«Работа» на китайском языке',
    imageUrl:
        'https://s0.rbk.ru/v6_top_pics/media/img/3/80/346943307690803.jpeg',
    detailedDescription: 'В рамках курса вы освоите базовую лексику, грамматику и основные фразы, которые помогут эффективно общаться в профессиональной среде. ',
    currentPoints: 150,
    maxPoints: 200,
    progressPercentage: 75.6,
    tests: [
      Test(
        title: 'Офисные предметы',
        shortDescription: 'Изучим предметы которые окружают нас в офисе',
        questionCount: 10,
        maxPoints: 100,
        status: 'В процессе',
        scoredPoints: 50,
      ),
      Test(
        title: 'Что про формальность?',
        shortDescription: 'Поймем что является формальным, а что нет',
        questionCount: 15,
        maxPoints: 150,
        status: 'Не начат',
      ),
      Test(
        title: 'Я презентациЯ',
        shortDescription: 'Учимся презентовать себя на китайском',
        questionCount: 20,
        maxPoints: 200,
        status: 'Завершён',
        scoredPoints: 180,
      ),
    ],
  );

  CourseDetailScreen();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: context.colors.baseText),
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Text(
            course.title,
            style: context.textStyles.headlineB
                .copyWith(color: context.colors.baseText),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                course.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Описание курса',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      course.detailedDescription,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Баллы: ${course.currentPoints} / ${course.maxPoints}',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Прогресс: ${course.progressPercentage}%',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Тесты',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: course.tests.length,
                      itemBuilder: (context, index) {
                        final test = course.tests[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: GestureDetector(
                            onTap: () {
                             context.push('/task/${1}');
                            },
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          test.title,
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          '${test.shortDescription}',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Количество вопросов: ${test.questionCount}',
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
                                      child: Row(
                                        children: [
                                          if (test.status == 'В процессе')
                                            Icon(Icons.circle,
                                                color: Colors.green, size: 12),
                                          if (test.status == 'Завершён')
                                            Icon(Icons.circle,
                                                color: Colors.red, size: 12),
                                          SizedBox(width: 4),
                                          Text(
                                            test.status,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: test.status == 'В процессе'
                                                  ? Colors.green
                                                  : test.status == 'Завершён'
                                                      ? Colors.red
                                                      : Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Text(
                                        test.status == 'Не начат'
                                            ? 'Макс. балл: ${test.maxPoints}'
                                            : '${test.scoredPoints} / ${test.maxPoints}',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: test.status == 'В процессе'
                                              ? Colors.green
                                              : test.status == 'Завершён'
                                                  ? Colors.red
                                                  : Colors.grey[700],
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Course {
  final String title;
  final String imageUrl;
  final String detailedDescription;
  final int currentPoints;
  final int maxPoints;
  final double progressPercentage;
  final List<Test> tests;

  Course({
    required this.title,
    required this.imageUrl,
    required this.detailedDescription,
    required this.currentPoints,
    required this.maxPoints,
    required this.progressPercentage,
    required this.tests,
  });
}

class Test {
  final String title;
  final String shortDescription;
  final int questionCount;
  final int maxPoints;
  final String status;
  final int? scoredPoints;

  Test({
    required this.title,
    required this.shortDescription,
    required this.questionCount,
    required this.maxPoints,
    required this.status,
    this.scoredPoints,
  });
}

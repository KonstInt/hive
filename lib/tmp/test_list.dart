import 'package:flutter/material.dart';

class TestsScreen extends StatelessWidget {
  final List<Test> availableTests = [Test(
          title: 'Тест 1',
          shortDescription: 'Краткое описание теста 1',
          questionCount: 10,
          maxPoints: 100,
          status: 'В процессе',
          scoredPoints: 50,
        ),
        Test(
          title: 'Тест 2',
          shortDescription: 'Краткое описание теста 2',
          questionCount: 15,
          maxPoints: 150,
          status: 'Не начат',
        ),
        Test(
          title: 'Тест 3',
          shortDescription: 'Краткое описание теста 3',
          questionCount: 20,
          maxPoints: 200,
          status: 'Завершён',
          scoredPoints: 180,
        ),];

  TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Доступные Тесты'),
      ),
      body: ListView.builder(
        itemCount: availableTests.length,
        itemBuilder: (context, index) {
          final test = availableTests[index];
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
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            Icon(Icons.circle, color: Colors.green, size: 12),
                          if (test.status == 'Завершён')
                            Icon(Icons.circle, color: Colors.red, size: 12),
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
                                  ? Colors.black
                                  : Colors.grey[700],
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
    );
  }
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

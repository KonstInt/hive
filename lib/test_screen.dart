import 'package:flutter/material.dart';
import 'package:hive/digital_ink_widget.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child:
              // DrawingWidget()
              Column(
        children: [
          SizedBox(
            height: 100,
          ),
          InkRecognitionWidget(
            languageCode: 'en',
            correctAnswer: 'a',
          ),
        ],
      )),
      // body: MultiQuizWidget(
      //   options: [
      //     const Text('Option 1'),
      //     const Text('Option 2'),
      //     const Text('Option 3'),
      //     Container(
      //       height: 200,
      //       color: Colors.amber,
      //     )
      //   ],
      //   correctIndexes: [1,2],
      //   callback: func2,
      // ),
    );
  }

  void func({required int selectedIndex}) {}
  void func2({required List<int> selectedIndexes}) {}
}

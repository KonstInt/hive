import 'package:flutter/material.dart';
import 'package:hive/src/features/course_task/presentation/screen/common/digital_ink_widget.dart';
import 'package:hive/src/features/course_task/presentation/screen/task_provided_screen.dart';
import 'package:hive/tmp/my_courses_screen.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:UserCoursesScreen())
              // DrawingWidget()
              // SingleChildScrollView(
              //   child: 
              //   //TaskProvidedScreen(taskId: '123', meta: null),
                
              // )),
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

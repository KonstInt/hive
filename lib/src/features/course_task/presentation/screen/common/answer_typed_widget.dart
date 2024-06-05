import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class AnswerTypedWidget extends StatelessWidget {
  const AnswerTypedWidget({super.key, required this.answer});
  final CourseTestTaskAnswer answer;
  @override
  Widget build(BuildContext context) {
    return answer.map(
        fromText: (value) => Column(
              children: [
                Text(
                  value.text,
                  style: context.textStyles.bodyB
                      .copyWith(color: context.colors.baseText),
                ),
                if (value.imageUrl != null) Image.network(value.imageUrl!)
              ],
            ),
        fromHTML: (value) => HtmlWidget(value.htmlCode),
        //TODO: check heigth
        fromImage: (value) => Image.network(value.imageUrl, height: 30,));
  }
}

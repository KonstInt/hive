import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:hive/src/features/course_task/domain/models/question/course_test_task_question.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class QuestionTypedWidget extends StatelessWidget {
  const QuestionTypedWidget({super.key, required this.question});
  final CourseTestTaskQuestion question;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200.h,
          
         
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
          child: Card(
            color: context.colors.primaryBackground,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: question.map(
                  fromText: (value) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(value.question, style: context.textStyles.bodyB,),
                          if (value.imageUrl != null) Image.network(value.imageUrl!)
                        ],
                      ),
                  fromHTML: (value) => HtmlWidget(value.htmlCode),
                  fromImage: (value) => Image.network(value.imageUrl,)),
            ),
          ),
        ),
      ),
    );
  }
}

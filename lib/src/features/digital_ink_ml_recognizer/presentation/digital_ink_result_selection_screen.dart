import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/util/base_components/widgets/simple_button.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class DigitalInkResultSelectionScreen extends StatefulWidget {
  final List<String> results;

  const DigitalInkResultSelectionScreen({super.key, required this.results});

  @override
  _DigitalInkResultSelectionScreenState createState() =>
      _DigitalInkResultSelectionScreenState();
}

class _DigitalInkResultSelectionScreenState
    extends State<DigitalInkResultSelectionScreen> {
  late String selectedOption;
  late List<String> remainingOptions;
  bool showOptions = false;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.results.first;
    remainingOptions = widget.results.skip(1).toList();
  }

  void toggleOptions() {
    setState(() {
      showOptions = !showOptions;
    });
  }

  void selectOption(String option, int index) {
    setState(() {
      String previousOption = selectedOption;
      selectedOption = option;
      remainingOptions[index] = previousOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
          color: context.colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.h,
            width: double.infinity,
          ),
          Text(
            selectedOption,
            style: context.textStyles.headlineB,
          ),
          SizedBox(
            height: 10.h,
            width: double.infinity,
          ),
          Row(
            children: [
              TextButton(
                onPressed: toggleOptions,
                child: Text(
                  'Другие варианты',
                  style: context.textStyles.smallM
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Visibility(
            visible: showOptions,
            child: SizedBox(
              height: 250.h,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: remainingOptions.map(
                    (option) {
                      int index = remainingOptions.indexOf(option);
                      return ListTile(
                        title: Text(
                          option,
                          style: context.textStyles.smallM,
                        ),
                        onTap: () => selectOption(option, index),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 40.h,
            child: SimpleForwardButton(
                titleButton: "Ok",
                onTap: () {
                  context.pop();
                }),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
/*Column(
              mainAxisSize: MainAxisSize.min,
              children: remainingOptions.map((option) {
                int index = remainingOptions.indexOf(option);
                return ListTile(
                  title: Text(
                    option,
                    style: context.textStyles.smallM,
                  ),
                  onTap: () => selectOption(option, index),
                );
              }).toList(),
            ),*/

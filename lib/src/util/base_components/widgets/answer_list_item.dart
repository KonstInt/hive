import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class AnswerListItem extends StatelessWidget {
  const AnswerListItem(
      {super.key, required this.child, required this.isSelected});
  final Widget child;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.mario, width: 1.0),
        borderRadius: const BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
            ),
        color: isSelected
            ? context.colors.black.withOpacity(0.3)
            : Colors.transparent,
      ),
      child: child,
    );
  }
}

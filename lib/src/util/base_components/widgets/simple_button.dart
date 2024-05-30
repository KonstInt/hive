import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/src/util/base_components/widgets/filled_gradient_button.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class SimpleForwardButton extends StatelessWidget {
  final String titleButton;
  const SimpleForwardButton({
    required this.titleButton,
    required this.onTap,
    super.key,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return FilledGradientButton(
      onTap: onTap,
      height: 70.h,
      width: 200.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titleButton,
            style: context.textStyles.descriptionM.copyWith(
              color: context.colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

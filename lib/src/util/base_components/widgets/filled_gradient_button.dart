import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class FilledGradientButton extends StatelessWidget {
  const FilledGradientButton(
      {super.key,
      required this.child,
      required this.height,
      required this.width,
      this.gradient,
      required this.onTap});
  final Widget child;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final LinearGradient? gradient;
  @override
  Widget build(BuildContext context) {
    final gradientD = onTap != null
        ? gradient ?? context.colors.gliphSeparateGradient
        : LinearGradient(
            colors: [context.colors.disabled, context.colors.disabled]);
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(12.r)),
      onTap: onTap,
      child: Container(
        height: height,
        // width: width,
        decoration: BoxDecoration(
          gradient: gradientD,
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: context.colors.black4,
          //     spreadRadius: 2,
          //     blurRadius: 3,
          //     offset: const Offset(-1, 1),
          //   ),
          // ],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 55.w),
          child: child,
        ),
      ),
    );
    // return InkWell(
    //   borderRadius: const BorderRadius.all(Radius.circular(15)),
    //   onTap: onTap,
    //   child: BackdropFilter(
    //     filter: ColorFilter.mode(
    //         onTap != null ? Colors.transparent : context.colors.disabled,
    //         BlendMode.dstATop),
    //     child: ColorFiltered(
    //       colorFilter: ColorFilter.mode(
    //           onTap != null ? Colors.transparent : context.colors.black50,
    //           onTap != null ? BlendMode.srcOver : BlendMode.srcIn),
    //       child: Container(
    //         height: height,
    //         width: width,
    //         decoration: BoxDecoration(
    //           gradient: onTap != null
    //               ? gradient ?? context.colors.blueGradient
    //               : LinearGradient(colors: [
    //                   context.colors.disabled,
    //                   context.colors.disabled
    //                 ]),
    //           borderRadius: const BorderRadius.all(
    //             Radius.circular(15),
    //           ),
    //           boxShadow: [
    //             BoxShadow(
    //               color: context.colors.black4,
    //               spreadRadius: 2,
    //               blurRadius: 3,
    //               offset: const Offset(-1, 1),
    //             ),
    //           ],
    //         ),
    //         child: child,
    //       ),
    //     ),
    //   ),
    // );
  }
}

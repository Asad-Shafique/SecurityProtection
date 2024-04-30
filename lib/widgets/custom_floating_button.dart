import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {Key? key,
      this.alignment,
      this.backgroundColor,
      this.onTap,
      this.width,
      this.height,
      this.decoration,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: fabWidget)
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: backgroundColor,
        onPressed: onTap,
        shape: CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: decoration ??
              BoxDecoration(
                  borderRadius: BorderRadius.circular(25.h),
                  color: backgroundColor),
          child: child,
        ),
      );
}

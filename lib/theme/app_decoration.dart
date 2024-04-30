import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.76),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.4),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal30070.withOpacity(0.4),
      );
  static BoxDecoration get fillTeal30070 => BoxDecoration(
        color: appTheme.teal30070,
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );

  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
}

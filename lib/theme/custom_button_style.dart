import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillTealTL28 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal30070.withOpacity(0.54),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
  static ButtonStyle get fillTealTL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal30070.withOpacity(0.76),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillTealTL29 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal30070,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

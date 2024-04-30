import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumInterGray200 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray200,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumKarla => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumKarla18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeJosefinSansPrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumKarlaLightblue100 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue100,
        fontWeight: FontWeight.w500,
      );
  static get bodyMediumTeal20002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal20002,
      );
  static get bodySmallTealA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA20001,
      );
// Headline text style
  static get headlineLargePoppinsWhiteA700 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineLargeWhiteA700_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallTeal20002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal20002,
        fontWeight: FontWeight.w700,
      );
// Label style
  static get labelLargeInika => theme.textTheme.labelLarge!.inika;
  static get labelLargeInikaGray200 =>
      theme.textTheme.labelLarge!.inika.copyWith(
        color: appTheme.gray200,
        fontSize: 12.fSize,
      );
// Title text style
  static get titleLargeTeal20002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal20002,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallGray100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray100,
      );
}

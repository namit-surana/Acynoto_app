import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  static get titleLargeFixelDisplayOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.fixelDisplay.copyWith(
        // color: theme.colorScheme.onPrimaryContainer,
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
        fontSize: 16.fSize,
      );

  static get titleLargeFixelDisplay_1 => theme.textTheme.titleLarge!.copyWith(
    fontSize: 16.fSize,
    color: appTheme.black900,
    fontWeight:  FontWeight.w400,
  );

  static get labelLargeFixelDisplay => theme.textTheme.labelLarge!.copyWith(
    fontSize: 16.fSize,
    color: appTheme.black900,
    fontWeight:  FontWeight.w400,
  );

  static get labelLargeFixelDisplayOnPrimaryContainer =>
      theme.textTheme.labelLarge!.fixelDisplay.copyWith(
        // color: theme.colorScheme.onPrimaryContainer,
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
        fontSize: 16.fSize,
      );
  static get bodyLargeRed700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red700,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLarge_2 => theme.textTheme.bodyLarge!;
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineMediumBlack90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineMediumMonaSans => theme.textTheme.headlineMedium!.monaSans;
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumMonaSans =>
      theme.textTheme.titleMedium!.monaSans.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );

  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );

  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static get titleMediumOnPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        // color: theme.colorScheme.onPrimaryContainer,
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {

  TextStyle get monaSans {
    return copyWith(
      fontFamily: 'Mona-Sans',
    );
  }

  TextStyle get fixelDisplay {
    return copyWith(
      fontFamily: 'Fixel Display',
    );
  }
}

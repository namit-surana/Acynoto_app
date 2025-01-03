import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.2),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlue100 => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple50,
      );
  static BoxDecoration get fillDeeppurple5001 => BoxDecoration(
        color: appTheme.deepPurple5001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo100,
      );
  static BoxDecoration get fillIndigo50 => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillIndigo5001 => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue5001,
      );
  static BoxDecoration get fillLightblue50 => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillLightblue5002 => BoxDecoration(
        color: appTheme.lightBlue5002,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillRed50 => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillRed5001 => BoxDecoration(
        color: appTheme.red5001,
      );
  static BoxDecoration get fillRed5002 => BoxDecoration(
        color: appTheme.red5002,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.81),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001.withOpacity(0),
            appTheme.black90001.withOpacity(0.63),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(
              3,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.03),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(
              4,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray1001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray1002 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
          left: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
          right: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder82 => BorderRadius.circular(
        82.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL12 => BorderRadius.only(
        topLeft: Radius.circular(12.h),
        topRight: Radius.circular(12.h),
        bottomLeft: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL121 => BorderRadius.vertical(
        top: Radius.circular(12.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

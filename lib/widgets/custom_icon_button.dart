import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(11.h),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black90001.withOpacity(0.06),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL14 => BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL27 => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get outlineBlackTL20 => BoxDecoration(
        color: appTheme.greenA700,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL29 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get outlineBlackTL14 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(14.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL20 => BoxDecoration(
        color: appTheme.gray10004,
        borderRadius: BorderRadius.circular(20.h),
      );
}

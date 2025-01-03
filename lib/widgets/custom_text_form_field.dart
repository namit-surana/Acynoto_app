import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.readOnly = false,
    this.e,
    this.onTap,
    this.borderSide,
    this.inputFormatters,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final BorderSide? borderSide;

  final String? e;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          onTap: () {
            if (onTap != null) onTap!();
          },
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          readOnly: readOnly,
          inputFormatters: inputFormatters,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray600,
        errorText: e,
        errorStyle: TextStyle(
          color: appTheme.error,
          fontSize: 14.fSize,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefix ??
            SizedBox(
              width: 16.h,
            ),
        prefixIconConstraints:
            prefixConstraints ?? BoxConstraints(maxHeight: 56.v),
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        filled: filled,
        fillColor: fillColor ?? appTheme.gray10001,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 0.h,
              top: 14.h,
              right: 16.h,
              bottom: 16.h,
            ),
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: borderSide ??
                  BorderSide(
                    color: appTheme.textfeild,
                  ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: borderSide ??
                  BorderSide(
                    color: appTheme.textfeild,
                  ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: borderSide ??
                  BorderSide(
                    color: theme.colorScheme.primary,
                  ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.h),
          borderSide: borderSide ??
              BorderSide(
                color: appTheme.error,
              ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.h),
          borderSide: borderSide ??
              BorderSide(
                color: appTheme.error,
              ),
        ),
      );
}

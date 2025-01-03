import '../models/chipviewselectt_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewselecttItemWidget extends StatelessWidget {
  ChipviewselecttItemWidget(
    this.chipviewselecttItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewselecttItemModel chipviewselecttItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewselecttItemModelObj.selecttime.value,
          style: TextStyle(
            color: chipviewselecttItemModelObj.isSelected.value
                ? appTheme.whiteA700
                : appTheme.black900,
            fontSize: 14.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewselecttItemModelObj.isSelected.value,
        backgroundColor: appTheme.whiteA700,
        selectedColor: theme.colorScheme.primary,
        shape: chipviewselecttItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          chipviewselecttItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

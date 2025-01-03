import '../models/chipviewselectt2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewselectt2ItemWidget extends StatelessWidget {
  Chipviewselectt2ItemWidget(
    this.chipviewselectt2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewselectt2ItemModel chipviewselectt2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewselectt2ItemModelObj.selecttime.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 14.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewselectt2ItemModelObj.isSelected.value,
        backgroundColor: appTheme.whiteA700,
        selectedColor: appTheme.whiteA700,
        shape: chipviewselectt2ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.whiteA700.withOpacity(0.6),
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
          chipviewselectt2ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

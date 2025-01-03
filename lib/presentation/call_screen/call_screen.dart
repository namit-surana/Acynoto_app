import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import 'controller/call_controller.dart';

class CallScreen extends GetWidget<CallController> {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 82.h, vertical: 40.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse225,
                  height: 164.adaptSize,
                  width: 164.adaptSize,
                ),
                SizedBox(height: 21.v),
                Text("msg_dr_ether_howards".tr,
                    style: CustomTextStyles.headlineMediumBlack90001),
                Padding(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Text("lbl_13_35_min".tr,
                        style: CustomTextStyles.bodyLargeGray600))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 82.h, right: 82.h, bottom: 40.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
                height: 58.v,
                width: 58.v,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillGrayTL29,
                child: CustomImageView(svgPath: ImageConstant.imgMicrophone)),
            CustomIconButton(
                height: 58.v,
                width: 58.v,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillRed,
                onTap: () {
                  onTapBtnIconbutton();
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgGroup29WhiteA700)),
            CustomIconButton(
                height: 58.v,
                width: 58.v,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillGrayTL29,
                child:
                    CustomImageView(svgPath: ImageConstant.imgGroup29Black900)),
          ],
        ),
      ),
    );
  }

  onTapBtnIconbutton() {
    Get.toNamed(
      AppRoutes.addReviewScreen,
    );
  }
}

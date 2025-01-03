import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/settings_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              decoration: AppDecoration.outlineGray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  CustomAppBar(
                    leadingWidth: 44.h,
                    leading: AppbarImage(
                        svgPath: ImageConstant.imgArrowleft,
                        margin: EdgeInsets.only(left: 20.h, bottom: 5.v),
                        onTap: () {
                          onTapArrowleftone();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_settings".tr),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapNotification(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 0.v,
                        right: 1.h,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLockBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 15.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "lbl_notifications".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.arrowRightNew,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 12.v,
                              right: 0.h,
                              bottom: 12.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  GestureDetector(
                    onTap: () {
                      onTapPrivacy(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 0.v,
                        right: 1.h,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 15.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "lbl_privacy_policy".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.arrowRightNew,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 12.v,
                              right: 0.h,
                              bottom: 12.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  GestureDetector(
                    onTap: () {
                      onTapHelp(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 0.v,
                        right: 1.h,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgWarning,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 15.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "lbl_help_center".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.arrowRightNew,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 12.v,
                              right: 0.h,
                              bottom: 12.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapNotification(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.notificationsScreen);
  }
  onTapPrivacy(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.privacyPolicyScreen);
  }
  onTapHelp(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.helpCenterScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

import '../../widgets/custom_bottom_bar.dart';
import 'controller/appointment_details_controller.dart';

//ignore_for_file: must_be_immutable
class AppointmentDetailsScreen extends GetWidget<AppointmentDetailsController> {
   AppointmentDetailsScreen({Key? key}) : super(key: key);

  CustomBottomBarController customBottomBarController =
      Get.put(CustomBottomBarController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              decoration: AppDecoration.outlineGray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  CustomAppBar(
                      leadingWidth: 44.h,
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: EdgeInsets.only(left: 20.h, bottom: 4.v),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      centerTitle: true,
                      title: AppbarTitle(text: "msg_appointment_details".tr))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage,
                              height: 94.adaptSize,
                              width: 94.adaptSize,
                              radius: BorderRadius.circular(12.h)),
                          SizedBox(width: 16.h),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text("msg_dr_esther_howard".tr,
                                          style: theme.textTheme.titleMedium),
                                    ),
                                    CustomIconButton(
                                        height: 30.v,
                                        width: 30.v,
                                        padding: EdgeInsets.all(4.h),
                                        decoration:
                                            IconButtonStyleHelper.fillGrayTL14,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFavorite))
                                  ],
                                ),
                                SizedBox(height: 8.v),
                                Text("lbl_cardiologists".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                SizedBox(height: 8.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgStarAmber50001,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_4_0".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_4_2k_reviews".tr,
                                            style: theme.textTheme.bodySmall))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Text("msg_schedule_appointment".tr,
                      style: CustomTextStyles.titleMediumBlack90001),
                  SizedBox(height: 20.v),
                  Text("msg_today_december".tr,
                      style: CustomTextStyles.bodyLargeGray700),
                  SizedBox(height: 11.v),
                  Text("msg_16_00_16_30_pm".tr,
                      style: CustomTextStyles.bodyLargeGray700),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 18.v),
                  Text("msg_patient_information".tr,
                      style: CustomTextStyles.titleMediumBlack90001),
                  SizedBox(height: 20.v),
                  Text("msg_full_name_ronald".tr,
                      style: CustomTextStyles.bodyLargeGray700),
                  SizedBox(height: 11.v),
                  Text("lbl_gender_male".tr,
                      style: CustomTextStyles.bodyLargeGray700),
                  SizedBox(height: 13.v),
                  Text("lbl_age_27".tr,
                      style: CustomTextStyles.bodyLargeGray700),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  Text("msg_your_selected_package".tr,
                      style: CustomTextStyles.titleMediumBlack90001),
                  SizedBox(height: 16.v),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Row(
                      children: [
                        CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGrayTL27,
                            child:
                                CustomImageView(svgPath: ImageConstant.imgCar)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 6.v, bottom: 3.v),
                            child: Column(children: [
                              Text("lbl_massaging".tr,
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 7.v),
                              Text("msg_chat_with_doctor".tr,
                                  style: theme.textTheme.bodyMedium)
                            ])),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("lbl_25_00".tr,
                                  style: CustomTextStyles.titleMediumBold16),
                              SizedBox(height: 14.v),
                              Text("lbl_30_mins".tr,
                                  style: theme.textTheme.bodyMedium),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomElevatedButton(
        text: "msg_chat_with_doctor".tr,
        onTap: () {
          customBottomBarController.getIndex(3);
          Constant.sendToNextScreen(context, AppRoutes.homeContainerScreen);
        },
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

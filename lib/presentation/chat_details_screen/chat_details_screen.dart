import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_image_1.dart';
import 'package:medi_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:medi_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_floating_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import 'controller/chat_details_controller.dart';

class ChatDetailsScreen extends GetWidget<ChatDetailsController> {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        height: 75.v,
        leadingWidth: 40.h,
        leading: AppbarImage(
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowleftone();
            }),
        title: Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            children: [
              AppbarCircleimage(imagePath: ImageConstant.imgEllipse23),
              Padding(
                padding: EdgeInsets.only(left: 16.h, top: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppbarSubtitle(text: "msg_dr_esther_howard".tr),
                    AppbarSubtitle1(
                      text: "msg_active_6_hour_ago".tr,
                      margin: EdgeInsets.only(top: 7.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          AppbarImage1(
              svgPath: ImageConstant.imgVideocameraBlack900,
              onTap: (){
                onTapVideo();
              },
              margin: EdgeInsets.only(left: 0.h, top: 16.v, right: 16.h)),
          AppbarImage1(
              svgPath: ImageConstant.imgCallBlack900,
              onTap: (){
                onTapAudio();
              },
              margin: EdgeInsets.only(left: 14.h, top: 16.v, right: 16.h))
        ],
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 22.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.v),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("lbl_you".tr,
                                      style: theme.textTheme.bodySmall),
                                  SizedBox(height: 7.v),
                                  Container(
                                      width: 176.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 5.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 5.v),
                                            SizedBox(
                                                width: 126.h,
                                                child: Text(
                                                    "msg_hi_good_afternoon".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodyLarge!
                                                        .copyWith(
                                                            height: 1.50)))
                                          ])),
                                  SizedBox(height: 7.v),
                                  Text("lbl_12_00_pm".tr,
                                      style: theme.textTheme.bodySmall)
                                ]),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse24,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                radius: BorderRadius.circular(25.h),
                                margin:
                                    EdgeInsets.only(left: 8.h, bottom: 58.v))
                          ])),
                  SizedBox(height: 15.v),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse23,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(25.h),
                        margin: EdgeInsets.only(bottom: 58.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_dr_esther_howard".tr,
                                  style: theme.textTheme.bodySmall),
                              SizedBox(height: 7.v),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 5.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 5.v),
                                        SizedBox(
                                            width: 126.h,
                                            child: Text(
                                                "msg_hi_good_afternoon2".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(height: 1.50)))
                                      ])),
                              SizedBox(height: 7.v),
                              Text("lbl_13_00_pm".tr,
                                  style: theme.textTheme.bodySmall)
                            ]))
                  ]),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 85.h, top: 15.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                      Text("lbl_you".tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 7.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 5.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL12),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 5.v),
                                                SizedBox(
                                                    width: 221.h,
                                                    child: Text(
                                                        "msg_i_m_ronald_i_have"
                                                            .tr,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .bodyLargeBlack90001
                                                            .copyWith(
                                                                height: 1.50)))
                                              ])),
                                      SizedBox(height: 7.v),
                                      Text("lbl_13_30_pm".tr,
                                          style: theme.textTheme.bodySmall)
                                    ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse24,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    radius: BorderRadius.circular(25.h),
                                    margin: EdgeInsets.only(
                                        left: 8.h, bottom: 58.v))
                              ]))),
                  SizedBox(height: 15.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse23,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(25.h),
                          margin: EdgeInsets.only(bottom: 58.v)),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_dr_esther_howard".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 7.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 5.v),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 5.v),
                                  SizedBox(
                                    width: 189.h,
                                    child: Text(
                                      "msg_can_you_tell_me".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeBlack90001
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Text("lbl_13_00_pm".tr,
                                style: theme.textTheme.bodySmall)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
        child: Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: controller.activityoneController,
                hintText: "lbl_massage".tr,
                textInputAction: TextInputAction.done,
                fillColor: appTheme.gray10003,
                autofocus: false,
                filled: true,
              borderSide: BorderSide.none,
              ),
            ),
            SizedBox(width: 16.h),
            CustomFloatingButton(
              height: 58.v,
              width: 58.v,
              backgroundColor: theme.colorScheme.primary,
              decoration: FloatingButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                  svgPath: ImageConstant.imgGroup29,
                  height: 29.0.v,
                  width: 29.0.h),
            )
          ],
        ),
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapVideo() {
    Get.toNamed(AppRoutes.videocallScreen);
  }

  onTapAudio() {
    Get.toNamed(AppRoutes.callScreen);
  }
}

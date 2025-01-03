import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import 'controller/add_review_controller.dart';

class AddReviewScreen extends GetWidget<AddReviewController> {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    RxDouble rating = 0.0.obs;

    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      title: AppbarTitle(text: "lbl_add_your_review".tr))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
              child: Column(
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
                                        height: 28.adaptSize,
                                        width: 28.adaptSize,
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
                  SizedBox(height: 19.v),
                  Text("msg_your_overall_rating".tr,
                      style: CustomTextStyles.bodyLargeBlack90001),
                  SizedBox(height: 12.v),
                  ObxValue(
                          (p0) => GFRating(
                        onChanged: (ratings) {
                          rating.value = ratings;
                        },
                        value: rating.value,
                        itemCount: 5,
                        size: 10.h,
                        spacing: 3.v,
                        allowHalfRating: false,
                        defaultIcon: CustomImageView(
                          svgPath: ImageConstant.imgStarGray,
                          height: 24.v,
                          width: 24.h,
                        ),
                        filledIcon: CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 24.v,
                          width: 24.h,
                        ),
                      ),
                      rating),
                  SizedBox(height: 27.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_set_a_title_for".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 5.v),
                      CustomTextFormField(
                          controller: controller.fieldlableController,
                          autofocus: false,
                          filled: false,
                          hintText: "msg_best_advice_provide".tr)
                    ],
                  ),
                  SizedBox(height: 19.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_add_your_review".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 4.v),
                      CustomTextFormField(
                          controller: controller.placeholderController,
                          hintText: "msg_write_your_review".tr,
                          autofocus: false,
                          filled: false,
                          textInputAction: TextInputAction.done,
                          maxLines: 6)
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomElevatedButton(
        text: "lbl_submit_review".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        onTap: () {
          onTapSubmitreview();
        },
      ),
    );
  }

  onTapSubmitreview() {
    Get.toNamed(
      AppRoutes.allReviewsScreen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

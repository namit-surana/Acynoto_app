import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medi_app/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'controller/doctor_details_controller.dart';

class DoctorDetailsScreen extends GetWidget<DoctorDetailsController> {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 30.v),
          child: Column(
            children: [
              SizedBox(
                height: 367.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle5460,
                        height: 367.v,
                        width: 428.h,
                        alignment: Alignment.bottomCenter),
                    CustomAppBar(
                      height: 60.v,
                      leadingWidth: 52.h,
                      leading: AppbarIconbutton1(
                          svgPath: ImageConstant.imgArrowleftBlack900,
                          margin: EdgeInsets.only(left: 16.h),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      actions: [
                        AppbarIconbutton2(
                            svgPath: ImageConstant.imgFavoriteBlack90036x36,
                            margin: EdgeInsets.symmetric(horizontal: 16.h))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h, top: 18.v, right: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("msg_dr_esther_howard".tr,
                        style: theme.textTheme.titleMedium),
                    Spacer(),

                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 14.v),
                      child: Text("lbl_cardiologists".tr,
                          style: CustomTextStyles.bodyLargeGray700))),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Divider(indent: 16.h, endIndent: 16.h)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 20.v),
                      child: Text("lbl_description".tr,
                          style: theme.textTheme.titleMedium))),
              Container(
                  width: 392.h,
                  margin: EdgeInsets.only(left: 16.h, top: 19.v, right: 19.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_dr_esther_howard4".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "msg_r_esther_howard".tr,
                            style: theme.textTheme.bodyLarge)
                      ]),
                      textAlign: TextAlign.left)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 17.v),
                      child: Text("lbl_working_days".tr,
                          style: theme.textTheme.titleMedium))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 12.v),
                      child: Text("msg_mon_sun_10_00_am".tr,
                          style: theme.textTheme.bodyLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 19.v, right: 16.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("msg_customer_reviews".tr,
                            style: theme.textTheme.titleMedium),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewall();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("lbl_view_all".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBlack900)))
                      ])),
              Container(
                width: 396.h,
                margin: EdgeInsets.only(left: 16.h, top: 18.v, right: 16.h),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                decoration: AppDecoration.outlineBlack
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Row(
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse30,
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            radius: BorderRadius.circular(28.h)),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 17.h, top: 2.v, bottom: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_ronald_richards".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack90001),
                              SizedBox(height: 10.v),
                              rating_star_row(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 350.h,
                        margin: EdgeInsets.only(top: 18.v, right: 13.h),
                        child: Text("msg_dr_esther_edwards".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeBlack90001
                                .copyWith(height: 1.50)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomElevatedButton(
        text: "msg_book_appointment".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        onTap: () {
          onTapBook();
        },
      ),
    );
  }

  onTapBook() {
    Get.toNamed(
      AppRoutes.bookAppointmentScreen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.allReviewsScreen,
    );
  }

  // ignore: non_constant_identifier_names
  Widget rating_star_row() {
    return Row(children: [
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgStarGray,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_image_1.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import 'controller/my_profile_controller.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class MyProfileScreen extends GetWidget<MyProfileController> {
  MyProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SizedBox(
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
                    SizedBox(height: 2.v),
                    CustomAppBar(
                      height: 30.v,
                      leadingWidth: 44.h,
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: EdgeInsets.only(
                              left: 20.h, top: 1.v, bottom: 5.v),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      centerTitle: true,
                      title: AppbarTitle(text: "lbl_my_profile".tr),
                      actions: [
                        AppbarImage1(
                          svgPath: ImageConstant.imgTicket,
                          margin: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 6.v),
                          onTap: () {
                            onTapTicketone();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                child: Column(
                  children: [
                    // Container(
                    //     height: 100.adaptSize,
                    //     width: 100.adaptSize,
                    //     decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //             image: fs.Svg(ImageConstant.imgAvtar1),
                    //             fit: BoxFit.cover)),
                    //     child: CustomIconButton(
                    //         height: 28.adaptSize,
                    //         width: 28.adaptSize,
                    //         padding: EdgeInsets.all(5.h),
                    //         decoration: IconButtonStyleHelper.outlineBlackTL14,
                    //         alignment: Alignment.bottomRight,
                    //         child: CustomImageView(
                    //             svgPath: ImageConstant.imgCameraBlack900))),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          height: 88.adaptSize,
                          width: 88.adaptSize,
                          svgPath: ImageConstant.imgAvtar1,
                        ),
                        CustomIconButton(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          margin: EdgeInsets.only(top: 50.h, left: 45.h),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(15.h),
                            boxShadow: [
                              BoxShadow(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.08),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCameraBlack900,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Text("lbl_ronald_richards".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 10.v),
                    Text("msg_ronaldrichards_gmail_com".tr,
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 24.v),
                    Container(
                      width: 396.h,
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name".tr, style: CustomTextStyles.bodyMedium14),
                          SizedBox(height: 11.v),
                          Text("Ronald richards".tr,
                              style: theme.textTheme.bodyLarge)
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 396.h,
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email address".tr,
                              style: CustomTextStyles.bodyMedium14),
                          SizedBox(height: 11.v),
                          Text("ronaldrichards@gmail.com".tr,
                              style: theme.textTheme.bodyLarge)
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 396.h,
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("lbl_phone_number".tr,
                              style: CustomTextStyles.bodyMedium14),
                          SizedBox(height: 11.v),
                          Text("lbl_405_555_0128".tr,
                              style: theme.textTheme.bodyLarge)
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
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapTicketone() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}

import '../log_out_screen/log_out_screen.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              decoration: AppDecoration.outlineGray100,
              child: CustomAppBar(
                centerTitle: true,
                title: AppbarTitle(
                  text: "lbl_profile".tr,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 40.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgAvtar1,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                  ),
                  SizedBox(height: 18.v),
                  Text(
                    "lbl_ronald_richards".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_ronaldrichards_gmail_com".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 24.v),
                  GestureDetector(
                    onTap: () {
                      onTapProfile(context);
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
                            svgPath: ImageConstant.imgUser,
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
                              "lbl_my_profile".tr,
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
                      onTapMyCards(context);
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
                            svgPath: ImageConstant.imgSave,
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
                              "My cards",
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
                      onTapSettings(context);
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
                            svgPath: ImageConstant.imgSettings,
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
                              "Settings",
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
                  GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (controller) {
                        return Container(
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
                                svgPath: ImageConstant.imgIcmoon,
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
                                  "Dark mode",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              Transform.scale(
                                scale: 1.8,
                                alignment: Alignment.center,
                                child: CustomImageView(
                                  onTap: () {
                                    // ThemeHelper().changeTheme();
                                    // controller.isSelectedSwitch.value =
                                    //     !controller.isSelectedSwitch.value;
                                    // controller.update();
                                  },
                                  svgPath: controller.isSelectedSwitch.value
                                      ? ImageConstant.switchOff
                                      : ImageConstant.switchOn,
                                  height: 22.v,
                                  width: 40.h,
                                  margin: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  SizedBox(height: 16.v),
                  GestureDetector(
                    onTap: () {
                      onTapLogout(context);
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
                            svgPath: ImageConstant.imgIcLogout,
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
                              "Log out",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapProfile(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.myProfileScreen);
  }

  onTapMyCards(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.myCardsScreen);
  }

  onTapSettings(BuildContext context) {
    Constant.sendToNextScreen(context, AppRoutes.settingsScreen);
  }

  onTapLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LogOutScreen();
      },
    );
  }
}

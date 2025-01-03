import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/appointment1_page/appointment1_page.dart';
import 'package:medi_app/presentation/chat_page/chat_page.dart';
import 'package:medi_app/presentation/favorite1_page/favorite1_page.dart';
import 'package:medi_app/presentation/home_page/home_page.dart';
import 'package:medi_app/presentation/profile_page/profile_page.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_bottom_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';

import 'controller/appointment_controller.dart';

class AppointmentScreen extends GetWidget<AppointmentController> {
  const AppointmentScreen({Key? key}) : super(key: key);

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
                          centerTitle: true,
                          title: AppbarTitle(text: "lbl_appointment".tr))
                    ])),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 33.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgCheck21,
                      height: 64.adaptSize,
                      width: 64.adaptSize),
                  SizedBox(height: 12.v),
                  Text("msg_no_appointment_yet".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 18.v),
                  SizedBox(
                      width: 361.h,
                      child: Text("msg_same_day_appointments".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  CustomElevatedButton(
                      text: "lbl_go_to_home".tr,
                      margin: EdgeInsets.fromLTRB(36.h, 29.v, 36.h, 1.v),
                      onTap: () {
                        onTapGotohome();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Appointment:
        return AppRoutes.appointment1Page;
      case BottomBarEnum.Me:
        return AppRoutes.favorite1Page;
      case BottomBarEnum.Chat:
        return AppRoutes.chatPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.appointment1Page:
        return Appointment1Page();
      case AppRoutes.favorite1Page:
        return Favorite1Page();
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapGotohome() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

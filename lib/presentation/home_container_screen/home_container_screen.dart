import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../appointment1_page/appointment1_page.dart';
import '../chat_tab_container_screen/chat_tab_container_screen.dart';
import '../favorite1_page/favorite1_page.dart';
import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/home_page/home_page.dart';
import 'package:medi_app/presentation/profile_page/profile_page.dart';
import 'package:medi_app/widgets/custom_bottom_bar.dart';

// ignore: must_be_immutable
class HomeContainerScreen extends GetWidget<HomeContainerController> {
  HomeContainerScreen({Key? key}) : super(key: key);

  List<Widget> screen = [
    HomePage(),
    Appointment1Page(),
    Favorite1Page(),
    ChatTabContainerScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder: (controller) => WillPopScope(
        onWillPop: () async {
          if (controller.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  insetPadding: EdgeInsets.all(16.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.h)),
                  contentPadding: EdgeInsets.zero,
                  content: Container(
                    width: 374.h,
                    padding: EdgeInsets.all(30.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Are you sure want to exit?".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: CustomOutlinedButton(
                                      height: 56.v,
                                      text: "No".tr,
                                      margin: EdgeInsets.only(right: 10),
                                      buttonStyle: CustomButtonStyles
                                          .fillOnPrimaryContainer
                                          .copyWith(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                        Colors.transparent,
                                      )),
                                      onTap: () {
                                        Get.back();
                                      })),
                              Expanded(
                                child: CustomElevatedButton(
                                  text: "Yes".tr,
                                  margin: EdgeInsets.only(left: 10),
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumOnPrimaryContainerMedium,
                                  onTap: () {
                                    if (controller.selectedIndex == 0) {
                                      Constant.closeApp();
                                    } else {
                                      controller.getIndex(0);
                                      Get.back();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            controller.getIndex(0);
          }
          return false;
        },
        child: Scaffold(
          backgroundColor: appTheme.whiteA700,
          resizeToAvoidBottomInset: false,
          appBar: getInVisibleAppBar(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          body: SafeArea(
            child: screen[controller.selectedIndex],
          ),
          bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          }),
        ),
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }
}

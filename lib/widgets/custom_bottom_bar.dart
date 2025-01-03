import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
    key: key,
  );

  // RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.homeUnselected,
      activeIcon: ImageConstant.homeSelected,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.appointmentUnselected,
      activeIcon: ImageConstant.appointmentSelected,
      title: "lbl_appointment".tr,
      type: BottomBarEnum.Appointment,
    ),
    BottomMenuModel(
      icon: ImageConstant.favoriteUnselected,
      activeIcon: ImageConstant.favoriteSelected,
      title: "Me".tr,
      type: BottomBarEnum.Me,
    ),
    BottomMenuModel(
      icon: ImageConstant.chatUnselected,
      activeIcon: ImageConstant.chatSelected,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.profileUnselected,
      activeIcon: ImageConstant.profileSelected,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.03),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: GetBuilder<CustomBottomBarController>(builder: (controller) {
        return BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: controller.selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 0.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 0.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.getIndex(index);
          },
        );
      },
      init: CustomBottomBarController(),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Appointment,
  Me,
  Chat,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomBottomBarController extends GetxController {
  int selectedIndex = 0;

  getIndex(int index) {
    selectedIndex = index;
    update();
  }
}

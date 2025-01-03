import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import '../notifications_screen/widgets/notificationrow_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_model.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

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
              child: CustomAppBar(
                leadingWidth: 44.h,
                leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowleftone();
                  },
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr),
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                itemCount: controller.categoryList.length,
                itemBuilder: (context, index) {
                  NotificationItemModel model = controller
                      .categoryList[index];
                  return NotificationrowItemWidget(model);
                },
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
}

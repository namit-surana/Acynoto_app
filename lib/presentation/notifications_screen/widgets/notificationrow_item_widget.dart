import '../controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import '../models/notifications_model.dart';

// ignore: must_be_immutable
class NotificationrowItemWidget extends StatelessWidget {
  NotificationrowItemWidget(
    this.notificationrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationrowItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillGrayTL20,
            child: CustomImageView(
              svgPath: ImageConstant.imgNotification,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationrowItemModelObj.title!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 12.v),
                Text(
                  notificationrowItemModelObj.subTitle!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 8.v),
                Text(
                  notificationrowItemModelObj.time!,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

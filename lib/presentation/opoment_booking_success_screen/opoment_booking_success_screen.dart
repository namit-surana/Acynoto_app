import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';

import 'controller/opoment_booking_success_controller.dart';

class OpomentBookingSuccessScreen
    extends GetWidget<OpomentBookingSuccessController> {
  const OpomentBookingSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.h),
      ),
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: 396.h,
        // height: 362.v,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
                svgPath: ImageConstant.imgCheck21,
                height: 120.adaptSize,
                width: 120.adaptSize),
            SizedBox(height: 13.v),
            Text("lbl_booking_success".tr,
                style: theme.textTheme.headlineSmall),
            SizedBox(height: 18.v),
            SizedBox(
              width: 337.h,
              child: Text(
                "msg_you_have_successfully2".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge!.copyWith(height: 1.50),
              ),
            ),
            CustomElevatedButton(
              text: "lbl_go_to_home".tr,
              margin: EdgeInsets.only(left: 26.h, top: 29.v, right: 26.h),
              onTap: () {
                onTapGotohome();
              },
            ),
          ],
        ),
      ),
    );
  }

  onTapGotohome() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

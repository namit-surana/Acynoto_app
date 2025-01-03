import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_outlined_button.dart';

import '../../widgets/custom_bottom_bar.dart';
import 'controller/log_out_controller.dart';


//ignore_for_file: must_be_immutable
class LogOutScreen extends GetWidget<LogOutController> {
   LogOutScreen({Key? key}) : super(key: key);

  CustomBottomBarController customBottomBarController =
  Get.put(CustomBottomBarController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return AlertDialog(
      insetPadding: EdgeInsets.all(16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.h)),
      contentPadding: EdgeInsets.zero,
      content: Container(
       width: 374.h,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 24.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Text("msg_are_you_sure_you".tr, style: theme.textTheme.titleMedium),
            SizedBox(height: 24.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: CustomOutlinedButton(
                        height: 56.v,
                        text: "lbl_cancel".tr,
                       onTap: () {
                         Get.back();
                       },
                        margin: EdgeInsets.only(right: 10.h),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
                        buttonTextStyle: CustomTextStyles.titleMediumPrimary)),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_log_out".tr,
                    margin: EdgeInsets.only(left: 10.h),
                    onTap: () {
                      onTapLogout();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onTapLogout() {
   PrefUtils.setLogin(true);
   customBottomBarController.getIndex(0);
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

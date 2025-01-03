import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../reset_password_screen/controller/reset_password_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordSucessScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordSucessScreen({Key? key})
      : super(
          key: key,
        );

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
        width: 396.v,
        child: Container(
          padding: EdgeInsets.all(24.h),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 6.v),
              CustomImageView(
                svgPath: ImageConstant.imgLayer2,
                height: 118.adaptSize,
                width: 118.adaptSize,
              ),
              SizedBox(height: 28.v),
              Text(
                "Password updated".tr,
                style: CustomTextStyles.titleLarge22,
              ),
              Container(
                width: 333.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 12.v,
                  right: 4.h,
                ),
                child: Text(
                  "You have successfully change your password.\nplease use your new password to log in "
                      .tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.56,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                text: "Go to log in".tr,
                onTap: () {
                  onTapGotologin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapGotologin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

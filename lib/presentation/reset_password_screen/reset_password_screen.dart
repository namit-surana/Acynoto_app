import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';
import 'controller/reset_password_controller.dart';

//ignore: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18.v),
                decoration: AppDecoration.outlineGray100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    CustomAppBar(
                      leadingWidth: 44.h,
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: EdgeInsets.only(left: 20.h, bottom: 5.v),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      centerTitle: true,
                      title: AppbarTitle(text: "lbl_reset_password".tr),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("msg_forgot_your_password".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50)),
                    ),
                    SizedBox(height: 25.v),
                    Text("lbl_new_password".tr,
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 5.v),
                    Obx(
                      () => CustomTextFormField(
                          controller: controller.newpasswordController,
                          hintText: "Password",
                          autofocus: false,
                          filled: false,
                          validator: (value) {
                            if (value != null && value.isEmpty)
                              return 'Please enter password.';
                            return null;
                          },
                          suffix: GestureDetector(
                            onTap: () {
                              controller.isShowPassword.value =
                                  !controller.isShowPassword.value;
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                              child: CustomImageView(
                                svgPath: controller.isShowPassword.value
                                    ? ImageConstant.imgCheckmark
                                    : ImageConstant.imgEye,
                                color: appTheme.black900,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(maxHeight: 54.v),
                          obscureText: controller.isShowPassword.value),
                    ),
                    SizedBox(height: 19.v),
                    Text("msg_confirm_password".tr,
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 5.v),
                    Obx(() => CustomTextFormField(
                        controller: controller.confirmpasswordController,
                        textInputAction: TextInputAction.done,
                        hintText: "Confirm Password",
                        autofocus: false,
                        filled: false,
                        validator: (value) {
                          if (value != null && value.isEmpty)
                            return 'Please enter password.';
                          if (value != controller.newpasswordController.text)
                            return 'Please check your password';
                          return null;
                        },
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword1.value =
                                !controller.isShowPassword1.value;
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                            child: CustomImageView(
                              svgPath: controller.isShowPassword1.value
                                  ? ImageConstant.imgCheckmark
                                  : ImageConstant.imgEye,
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(maxHeight: 54.v),
                        obscureText: controller.isShowPassword1.value)),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        text: "lbl_reset_password".tr,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            onTapResetpassword(context);
                          }
                        }),
                    SizedBox(height: 5.v),
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

  onTapResetpassword(BuildContext context) {
    controller.clearText();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ResetPasswordSucessScreen();
      },
    );
    controller.clearText();
  }
}

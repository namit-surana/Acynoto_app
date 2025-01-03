import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import 'controller/log_in_controller.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () {
        Constant.closeApp();
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.v),
                Text("lbl_log_in".tr, style: theme.textTheme.headlineMedium),
                SizedBox(height: 20.v),
                Text("msg_log_in_to_get_the".tr,
                    style: theme.textTheme.bodyLarge),
                SizedBox(height: 26.v),
                Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
                SizedBox(height: 6.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "msg_enter_your_email".tr,
                  autofocus: false,
                  filled: false,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  validator: controller.emailValidator,
                ),
                SizedBox(height: 18.v),
                Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
                SizedBox(height: 6.v),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.passwordController,
                    hintText: "lbl_password".tr,
                    autofocus: false,
                    filled: false,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: GestureDetector(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword.value
                              ? ImageConstant.imgEye
                              : ImageConstant.imgEye,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 56.v,
                    ),
                    validator: controller.passwordValidator,
                    obscureText: controller.isShowPassword.value,
                  ),
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtForgotpassword();
                    },
                    child: Text("msg_forgot_password".tr,
                        style: theme.textTheme.bodyLarge),
                  ),
                ),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  text: "lbl_log_in".tr,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      onTapLogin();
                    }
                  },
                ),
                SizedBox(height: 27.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: appTheme.divider,
                        endIndent: 8.0,
                        indent: 57,
                      ),
                      flex: 1,
                    ),
                    Text("msg_or_continue_with".tr,
                        style: theme.textTheme.bodyLarge),
                    Expanded(
                      child: Divider(
                        color: appTheme.divider,
                        indent: 8.0,
                        endIndent: 57,
                      ),
                      flex: 1,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 32.v, right: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: CustomElevatedButton(
                              height: 54.v,
                              text: "lbl_google".tr,
                              margin: EdgeInsets.only(right: 8.h),
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 12.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              buttonStyle: CustomButtonStyles.fillGray.copyWith(
                                  elevation: MaterialStatePropertyAll(0)),
                              buttonTextStyle: CustomTextStyles.titleMedium16,
                              onTap: () {
                                // onTapGoogle();
                              })),
                      Expanded(
                        child: CustomElevatedButton(
                          height: 54.v,
                          text: "lbl_facebook".tr,
                          margin: EdgeInsets.only(left: 8.h),
                          leftIcon: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 5.v),
                              margin: EdgeInsets.only(right: 12.h),
                              decoration: BoxDecoration(
                                  color: appTheme.blueA200,
                                  borderRadius: BorderRadius.circular(12.h)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFacebook)),
                          buttonStyle: CustomButtonStyles.fillGray
                              .copyWith(elevation: MaterialStatePropertyAll(0)),
                          buttonTextStyle: CustomTextStyles.titleMedium16,
                          onTap: () {
                            // onTapFacebook();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(text: " "),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(
                                  AppRoutes.signUpScreen,
                                );
                                controller.clearText();
                              },
                            text: "lbl_sign_up".tr,
                            style: CustomTextStyles.titleMediumBold16_1)
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapLogin() {
    PrefUtils.setLogin(false);
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

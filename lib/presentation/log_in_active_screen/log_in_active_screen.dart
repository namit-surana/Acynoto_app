import 'controller/log_in_active_controller.dart';import 'package:flutter/material.dart';import 'package:medi_app/core/app_export.dart';import 'package:medi_app/core/utils/validation_functions.dart';import 'package:medi_app/widgets/custom_elevated_button.dart';import 'package:medi_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LogInActiveScreen extends GetWidget<LogInActiveController> {LogInActiveScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 39.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 4.v), Text("lbl_log_in".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 19.v), Text("msg_log_in_to_get_the".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 26.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 6.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_ronaldrichards_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;})]), SizedBox(height: 18.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 6.v), Obx(() => CustomTextFormField(controller: controller.passwordController, textInputAction: TextInputAction.done, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgCheckmark : ImageConstant.imgCheckmark))), suffixConstraints: BoxConstraints(maxHeight: 54.v), obscureText: controller.isShowPassword.value))]), SizedBox(height: 19.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtForgotpassword();}, child: Text("msg_forgot_password".tr, style: theme.textTheme.bodyLarge))), SizedBox(height: 30.v), CustomElevatedButton(text: "lbl_log_in".tr, onTap: () {onTapLogin();}), SizedBox(height: 27.v), Align(alignment: Alignment.center, child: SizedBox(height: 24.v, width: 314.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 11.v), child: SizedBox(width: 314.h, child: Divider()))), CustomElevatedButton(height: 24.v, width: 128.h, text: "msg_or_continue_with".tr, buttonStyle: CustomButtonStyles.fillWhiteA, buttonTextStyle: theme.textTheme.bodyLarge!, alignment: Alignment.center)]))), Padding(padding: EdgeInsets.only(left: 8.h, top: 27.v, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(height: 54.v, text: "lbl_google".tr, margin: EdgeInsets.only(right: 8.h), leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(svgPath: ImageConstant.imgGoogle)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleMedium16, onTap: () {onTapGoogle();})), Expanded(child: CustomElevatedButton(height: 54.v, text: "lbl_facebook".tr, margin: EdgeInsets.only(left: 8.h), leftIcon: Container(padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v), margin: EdgeInsets.only(right: 12.h), decoration: BoxDecoration(color: appTheme.blueA200, borderRadius: BorderRadius.circular(12.h)), child: CustomImageView(svgPath: ImageConstant.imgFacebook)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleMedium16, onTap: () {onTapFacebook();}))])), Spacer(), Align(alignment: Alignment.center, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_s".tr, style: CustomTextStyles.titleMediumBold_1), TextSpan(text: "lbl_ign_up".tr, style: CustomTextStyles.titleMediumBold16_1)]), textAlign: TextAlign.left))]))))); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgotPasswordScreen.
onTapTxtForgotpassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the homeContainerScreen.
onTapLogin() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the homeContainerScreen.
onTapGoogle() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the homeContainerScreen.
onTapFacebook() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }

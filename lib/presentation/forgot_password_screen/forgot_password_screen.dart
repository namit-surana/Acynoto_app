import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
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
                        title: AppbarTitle(
                          text: "lbl_forgot_password".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "msg_forgot_your_password".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              theme.textTheme.bodyLarge!.copyWith(height: 1.50),
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text("lbl_email_address".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                        controller: controller.emailController,
                        hintText: "lbl_email_address".tr,
                        autofocus: false,
                        filled: false,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: controller.emailValidator,
                      ),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                        text: "lbl_send".tr,
                        onTap: () {
                         if (_formKey.currentState!.validate()) {
                          onTapSend();
                         }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapSend() {
    controller.clearText();
    Get.toNamed(
      AppRoutes.verificationsScreen,
    );
  }
}

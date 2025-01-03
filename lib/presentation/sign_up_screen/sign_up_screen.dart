import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';
import '../../widgets/coustom_country_picker.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_sign_up2".tr, style: theme.textTheme.headlineMedium),
              SizedBox(height: 19.v),
              Text("msg_sign_up_now_and".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 26.v),
              Text("lbl_full_name".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 6.v),
              CustomTextFormField(
                controller: controller.fullNameController,
                hintText: "Name",
                autofocus: false,
                filled: false,
                textInputType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter FullName";
                  }
                  return null;
                },
              ),
              SizedBox(height: 18.v),
              Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 6.v),
              CustomTextFormField(
                controller: controller.emailController,
                hintText: "Email",
                autofocus: false,
                filled: false,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isNotEmpty) {
                    if (!RegExp(
                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                        .hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  }
                  return "Please enter email address.";
                },
              ),
              SizedBox(height: 18.v),
              Text("lbl_phone_number".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 5.v),
              CustomTextFormField(
                controller: controller.phoneNumController,
                hintText: "Phone Number",
                autofocus: false,
                filled: false,
                textInputType: TextInputType.phone,
                prefix: CustomCountryCodePicker(
                  onChanged: (value) {
                    controller.changeCountry(
                        value.name!, value.dialCode!, context);
                  },
                  initialSelection: 'IN',
                  favorite: ['+91', 'IN'],
                  showCountryOnly: false,
                  enabled: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                  showFlag: false,
                  showDropDownButton: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Phone number";
                  }
                  return null;
                },
                prefixConstraints: BoxConstraints(maxHeight: 54.v),
              ),
              SizedBox(height: 18.v),
              Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 6.v),
              Obx(
                () => CustomTextFormField(
                  controller: controller.passwordController,
                  textInputAction: TextInputAction.done,
                  hintText: "Password",
                  autofocus: false,
                  filled: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password";
                    }
                    return null;
                  },
                  suffix: InkWell(
                    onTap: () {
                      controller.isShowPassword.value =
                          !controller.isShowPassword.value;
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                      child: CustomImageView(
                        svgPath: controller.isShowPassword.value
                            ? ImageConstant.imgCheckmark
                            : ImageConstant.imgCheckmark,
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  obscureText: controller.isShowPassword.value,
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_sign_up2".tr,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    onTapSignup();
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
              SizedBox(height: 125.v),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.back();
                                controller.clearText();
                              },
                            text: "lbl_ign_in".tr,
                            style: CustomTextStyles.titleMediumBold16_1)
                      ],
                    ),
                    textAlign: TextAlign.left),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapSignup() {
    PrefUtils.setLogin(false);
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapGoogle() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapFacebook() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

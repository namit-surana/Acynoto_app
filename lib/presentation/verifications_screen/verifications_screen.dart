import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';
import '../forgot_password_screen/controller/forgot_password_controller.dart';
import 'controller/verifications_controller.dart';

//ignore: must_be_immutable
class VerificationsScreen extends StatefulWidget {
  const VerificationsScreen({super.key});

  @override
  State<VerificationsScreen> createState() => _VerificationsScreenState();
}

class _VerificationsScreenState extends State<VerificationsScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  VerificationController controller = Get.put(VerificationController());
  ForgotPasswordController forgotPasswordController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    controller.otpController = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    }),
                centerTitle: true,
                title: AppbarTitle(
                  text: "lbl_verification".tr,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                child: Column(
                  children: [
                    Container(
                        width: 375.h,
                        margin: EdgeInsets.only(left: 9.h, right: 11.h),
                        child: Text("msg_forgot_your_password".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.50))),
                    SizedBox(height: 25.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_code_sent_to".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "msg_ronaldrichards_gmail_com".tr,
                              style: CustomTextStyles.titleMediumBold16_1)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 30.v),
                    Pinput(
                      errorTextStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.fSize,
                        color: appTheme.error,
                      ),
                      textInputAction: TextInputAction.done,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      disabledPinTheme: PinTheme(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24.fSize,
                            color: appTheme.black900,
                          ),
                          padding: EdgeInsets.only(left: 9.h, right: 9.h),
                          decoration: BoxDecoration(color: appTheme.error)),
                      controller: controller.otpController,
                      length: 6,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a valid code";
                        }
                        return null;
                      },
                      errorPinTheme: PinTheme(
                        padding: EdgeInsets.only(left: 8.5.h, right: 8.5.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: appTheme.error),
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        textStyle: TextStyle(
                          color: appTheme.error,
                          fontSize: 14.fSize,
                          fontWeight: FontWeight.w400,
                        ),
                        width: 50.h,
                        height: 50.h,
                      ),
                      defaultPinTheme: PinTheme(
                        padding: EdgeInsets.only(left: 8.5.h, right: 8.5.h),
                        width: 50.h,
                        height: 50.h,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.fSize,
                          color: appTheme.black900,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: appTheme.divider),
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        text: "lbl_verify".tr,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            onTapVerify();
                          }
                        }),
                    SizedBox(height: 29.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_don_t_receive_an2".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "lbl_resend_now".tr,
                              style: CustomTextStyles.titleMediumBold16_1)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapArrowleftone() {
    forgotPasswordController.clearText();
    Get.back();
  }

  onTapVerify() {
    controller.clearText();
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}

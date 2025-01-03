import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/core/utils/validation_functions.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import '../../widgets/coustom_country_picker.dart';
import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 19.v),
                  decoration: AppDecoration.outlineGray100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      CustomAppBar(
                        leadingWidth: 44.h,
                        leading: AppbarImage(
                            svgPath: ImageConstant.imgArrowleft,
                            margin: EdgeInsets.only(left: 20.h, bottom: 4.v),
                            onTap: () {
                              onTapArrowleftone();
                            }),
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_edit_profile".tr),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse225100x100,
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  radius: BorderRadius.circular(50.h),
                                  alignment: Alignment.center),
                              CustomIconButton(
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                margin: EdgeInsets.only(right: 2.h),
                                padding: EdgeInsets.all(5.h),
                                decoration:
                                    IconButtonStyleHelper.outlineBlackTL14,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgCameraBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 42.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_full_name".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 6.v),
                            CustomTextFormField(
                                controller: controller.fullNameController,
                                autofocus: false,
                                filled: false,
                                hintText: "lbl_ronald_richards".tr)
                          ]),
                      SizedBox(height: 18.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_email_address".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 6.v),
                            CustomTextFormField(
                                controller: controller.emailController,
                                hintText: "msg_ronaldrichards_gmail_com".tr,
                                textInputAction: TextInputAction.next,
                                autofocus: false,
                                filled: false,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                })
                          ]),
                      SizedBox(height: 18.v),
                      Text("lbl_phone_number".tr,
                          style: theme.textTheme.bodyLarge),
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
                      SizedBox(height: 5.v)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save".tr,
            onTap: () {
              Get.back();
            },
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v)));
  }

  onTapArrowleftone() {
    Get.back();
  }
}

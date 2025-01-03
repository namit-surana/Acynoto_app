import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/core/utils/validation_functions.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import 'controller/add_new_card_controller.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends GetWidget<AddNewCardController> {
  AddNewCardScreen({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  decoration: AppDecoration.outlineGray100,
                  child: CustomAppBar(
                      leadingWidth: 44.h,
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: EdgeInsets.only(
                              left: 20.h, top: 1.v, bottom: 3.v),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      centerTitle: true,
                      title: AppbarTitle(text: "lbl_add_new_card".tr))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                child: Column(
                  children: [
                    Container(
                        width: 364.h,
                        margin: EdgeInsets.symmetric(horizontal: 15.h),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_enter_your_card2".tr,
                                  style: theme.textTheme.bodyLarge),
                              TextSpan(
                                  text: "lbl_learn_more".tr,
                                  style: CustomTextStyles.bodyLargePrimary)
                            ]),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 15.v),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_card_number".tr,
                            style: theme.textTheme.bodyLarge),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                          controller: controller.cardNumberController,
                          hintText: "msg_enter_your_card3".tr,
                          textInputType: TextInputType.number,
                          filled: false,
                          autofocus: false,
                          validator: (value) {
                            if (!isNumeric(value)) {
                              return "Please enter valid number";
                            }
                            return null;
                          },
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 17.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v, right: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_expiry_date".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 5.v),
                                CustomTextFormField(
                                  width: 190.h,
                                  controller: controller.expirydateController,
                                  hintText: "lbl_mm_yy".tr,
                                  filled: false,
                                  autofocus: false,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(04),
                                    CardMonthInputFormatter(),
                                  ],
                                  validator: (val) {
                                    if (val!.trim().isNotEmpty) {
                                      if (val.trim().isEmpty) {
                                        return "Enter Expiry Date";
                                      }
                                      return null;
                                    }
                                    return "enter expiry date";
                                  },
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 7.h,
                                    vertical: 17.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_cvv".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 6.v),
                                CustomTextFormField(
                                  width: 190.h,
                                  controller: controller.cvvController,
                                  hintText: "lbl_123".tr,
                                  filled: false,
                                  autofocus: false,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) {
                                    if (val!.trim().isNotEmpty) {
                                      if (val.trim().isEmpty) {
                                        return "Enter Cvv Code";
                                      }
                                      return null;
                                    }
                                    return "enter cvv code";
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 7.h, vertical: 17.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        text: "lbl_add_new_card".tr,
                        onTap: () {
                          onTapAddnewcard();
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

  onTapAddnewcard() {
    // Get.toNamed(
    //   AppRoutes.myCardsScreen,
    // );

    Get.back();
  }
}



class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

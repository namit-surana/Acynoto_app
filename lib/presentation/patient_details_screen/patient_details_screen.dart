import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/patient_details_controller.dart';
import 'models/patient_details_model.dart';

class PatientDetailsScreen extends GetWidget<PatientDetailsController> {
  const PatientDetailsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_patient_details".tr),
              ),
            ),
            SizedBox(height: 26.v),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_full_name2".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 6.v),
                            CustomTextFormField(
                                controller: controller.fullNameController,
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.name,
                                autofocus: false,
                                filled: false,
                                hintText: "lbl_ronald_richards".tr)
                          ]),
                      SizedBox(height: 19.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_enter_your_age".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 5.v),
                            CustomTextFormField(
                                controller: controller.fieldlableController,
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.number,
                                filled: false,
                                autofocus: false,
                                hintText: "lbl_25".tr)
                          ]),
                      SizedBox(height: 18.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_gender".tr,
                                style: CustomTextStyles.bodyLarge_2),
                            SizedBox(height: 5.v),
                            CustomDropDown(
                              icon: Container(),
                              autofocus: false,
                              suffix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 7.v, 18.h, 7.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              hintText: "male".tr,
                              items: controller.chooseGenderModelObj.value
                                  .dropdownItemList.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              },
                            ),
                          ]),
                      SizedBox(height: 19.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_write_your_problem".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 4.v),
                            CustomTextFormField(
                                controller: controller.placeholderController,
                                filled: false,
                                autofocus: false,
                                hintText: "msg_write_your_problem".tr,
                                textInputAction: TextInputAction.done,
                                maxLines: 6)
                          ]),
                      SizedBox(height: 20.v),
                      Text("msg_select_your_package".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 0.v),
                      GetBuilder<PatientDetailsController>(
                          init: PatientDetailsController(),
                          builder: (controller) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 16.v);
                              },

                              itemCount: controller.categoryList.length,
                              itemBuilder: (context, index) {
                                PackageModel model =
                                    controller.categoryList[index];
                                return GestureDetector(
                                  onTap: () {
                                    controller.selected.value = index;
                                    controller.update();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 15.v,
                                    ),
                                    decoration: controller.selected.value == index
                                        ? BoxDecoration(
                                            color: appTheme.whiteA700,
                                            border: Border.all(
                                              color: theme.colorScheme.primary,
                                              width: 1.h,
                                            ),
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder16,
                                          )
                                        : AppDecoration.outlineGray.copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder16,
                                          ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                          height: 54.adaptSize,
                                          width: 54.adaptSize,
                                          margin: EdgeInsets.only(top: 1.v),
                                          padding: EdgeInsets.all(10.h),
                                          decoration:
                                              IconButtonStyleHelper.fillGrayTL27,
                                          child: CustomImageView(
                                            svgPath: model.image,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.h,
                                            top: 6.v,
                                            bottom: 3.v,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                model.title!,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              SizedBox(height: 7.v),
                                              Text(
                                                model.subTitle!,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                model.price!,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumBold16,
                                              ),
                                              SizedBox(height: 14.v),
                                              Text(
                                                "lbl_30_mins".tr,
                                                style: theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                      SizedBox(height: 20.v),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        onTap: () {
          onTapContinue();
        },
      ),
    );
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

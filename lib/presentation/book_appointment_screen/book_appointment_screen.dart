import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import 'controller/book_appointment_controller.dart';


class BookAppointmentScreen extends GetWidget<BookAppointmentController> {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              decoration: AppDecoration.outlineGray1001,
              child: Column(
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
                    title: AppbarTitle(text: "msg_book_appointment".tr),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 26.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("msg_select_schedule".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 16.v),
                  Container(
                    height: 80.v,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.v),
                      itemBuilder: (context, index) {
                        return GetBuilder<BookAppointmentController>(
                          builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                controller.selected.value = index;
                                controller.update();
                              },
                              child: Container(
                                height: 80.v,
                                width: 60.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.v, vertical: 10.h),
                                decoration: controller.selected.value == index
                                    ? AppDecoration.fillPrimary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12)
                                    : AppDecoration.outlineGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text(
                                      dateDataList[index].date!,
                                      style: controller.selected.value == index
                                          ? CustomTextStyles
                                              .titleLargeFixelDisplayOnPrimaryContainer_1
                                          : CustomTextStyles
                                              .titleLargeFixelDisplay_1,
                                    ),
                                    SizedBox(height: 6.v),
                                    Text(
                                      dateDataList[index].day!,
                                      style: controller.selected.value == index
                                          ? CustomTextStyles
                                              .labelLargeFixelDisplayOnPrimaryContainer
                                          : CustomTextStyles
                                              .labelLargeFixelDisplay,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          init: BookAppointmentController(),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 12.h),
                      itemCount: 6,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_today_24_oct".tr,
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 34.v,bottom: 16.v),
                      child: Text("msg_available_time_slots".tr,
                          style: theme.textTheme.titleMedium)),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 17.v,bottom: 10.v),
                      child: Text("Morning slot".tr,
                          style: CustomTextStyles.bodyMediumBlack90001)),
                  Container(
                    height: 44.v,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.v),
                      itemBuilder: (context, index) {
                        return GetBuilder<BookAppointmentController>(
                          builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                controller.slotSelected.value = index;
                                controller.update();
                              },
                              child: Container(
                                height: 44.v,
                                width: 99.h,
                                decoration: controller.slotSelected.value == index
                                    ? AppDecoration.fillPrimary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8)
                                    : AppDecoration.outlineGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Center(
                                  child: Text(
                                    slotDataList[index].time!,
                                    style: controller.slotSelected.value == index
                                        ? CustomTextStyles
                                        .titleLargeFixelDisplayOnPrimaryContainer_1
                                        : CustomTextStyles
                                        .titleLargeFixelDisplay_1,
                                  ),
                                ),
                              ),
                            );
                          },
                          init: BookAppointmentController(),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 12.h),
                      itemCount: slotDataList.length,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 17.v,bottom: 10.v),
                      child: Text("lbl_afternoon_slot".tr,
                          style: CustomTextStyles.bodyMediumBlack90001)),
                  Container(
                    height: 44.v,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.v),
                      itemBuilder: (context, index) {
                        return GetBuilder<BookAppointmentController>(
                          builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                controller.afternoonSlotSelected.value = index;
                                controller.update();
                              },
                              child: Container(
                                height: 44.v,
                                width: 99.h,
                                decoration: controller.afternoonSlotSelected.value == index
                                    ? AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder8)
                                    : AppDecoration.outlineGray.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder8),
                                child: Center(
                                  child: Text(
                                    afternoonSlotDataList[index].time!,
                                    style: controller.afternoonSlotSelected.value == index
                                        ? CustomTextStyles
                                        .titleLargeFixelDisplayOnPrimaryContainer_1
                                        : CustomTextStyles
                                        .titleLargeFixelDisplay_1,
                                  ),
                                ),
                              ),
                            );
                          },
                          init: BookAppointmentController(),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 12.h),
                      itemCount: afternoonSlotDataList.length,
                    ),
                  ),

                ],
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
      AppRoutes.patientDetailsScreen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

import '../controller/appointment1_controller.dart';
import '../models/appointment1_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class Doctordetails1ItemWidget extends StatelessWidget {
  Doctordetails1ItemWidget(
    this.doctordetails1ItemModelObj, {
    Key? key,
    this.onTapDoctordetails,
  }) : super(
          key: key,
        );

  AppointmentsItemsModel doctordetails1ItemModelObj;

  var controller = Get.find<Appointment1Controller>();

  VoidCallback? onTapDoctordetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDoctordetails?.call();
      },
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: doctordetails1ItemModelObj.image,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctordetails1ItemModelObj.name!,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 12.v),
                      Text(
                        doctordetails1ItemModelObj.profession!,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMedium14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                right: 38.h,
                bottom: 6.v,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_customer_name".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        doctordetails1ItemModelObj.customer!,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: SizedBox(
                      height: 42.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_schedule".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "31 August 11:00 am to 12:30 pm",
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

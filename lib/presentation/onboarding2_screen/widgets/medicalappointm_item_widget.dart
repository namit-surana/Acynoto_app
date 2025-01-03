import '../controller/onboarding2_controller.dart';
import '../models/medicalappointm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class MedicalappointmItemWidget extends StatelessWidget {
  MedicalappointmItemWidget(
    this.medicalappointmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MedicalappointmItemModel medicalappointmItemModelObj;

  var controller = Get.find<Onboarding2Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_book_appointments".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium!.copyWith(
            height: 1.36,
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          "msg_manage_your_medications".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge!.copyWith(
            height: 1.50,
          ),
        ),
      ],
    );
  }
}

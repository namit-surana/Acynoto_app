import '../controller/onboarding1_controller.dart';
import '../models/healthmanagemen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class HealthmanagemenItemWidget extends StatelessWidget {
  HealthmanagemenItemWidget(
    this.healthmanagemenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthmanagemenItemModel healthmanagemenItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            right: 8.h,
          ),
          child: Text(
            "msg_dedicated_to_helping".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineMediumMonaSans.copyWith(
              height: 1.36,
            ),
          ),
        ),
        SizedBox(height: 24.v),
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

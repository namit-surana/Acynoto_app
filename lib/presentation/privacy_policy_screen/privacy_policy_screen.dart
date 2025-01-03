import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'controller/privacy_policy_controller.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 18.v),
                decoration: AppDecoration.outlineGray300,
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
                          title: AppbarTitle(text: "lbl_privacy_policy".tr))
                    ])),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 25.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_1_types_of_data".tr,
                      style: CustomTextStyles.titleMediumBold),
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 390.h,
                      child: Text("msg_duis_tristique_diam".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge_2
                              .copyWith(height: 1.19))),
                  SizedBox(height: 21.v),
                  Text("msg_2_use_of_your_personal".tr,
                      style: theme.textTheme.titleLarge),
                  Container(
                      width: 377.h,
                      margin: EdgeInsets.only(top: 13.v, right: 16.h),
                      child: Text("msg_sed_sollicitudin".tr,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge_2
                              .copyWith(height: 1.19))),
                  SizedBox(height: 42.v),
                  Text("msg_3_disclosure_of".tr,
                      style: theme.textTheme.titleLarge),
                  Container(
                    width: 383.h,
                    margin:
                        EdgeInsets.only(top: 13.v, right: 10.h, bottom: 5.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "msg_sed_sollicitudin3".tr,
                              style: CustomTextStyles.bodyLarge_1),
                          TextSpan(
                              text: "msg_maecenas_egestas".tr,
                              style: CustomTextStyles.bodyLarge_1)
                        ],
                      ),
                      textAlign: TextAlign.left,
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

  onTapArrowleftone() {
    Get.back();
  }
}

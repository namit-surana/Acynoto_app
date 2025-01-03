import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_image_1.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import '../payment_method_screen/models/payment_method_model.dart';
import 'controller/my_cards_controller.dart';

class MyCardsScreen extends GetWidget<MyCardsController> {
  const MyCardsScreen({Key? key}) : super(key: key);

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
                decoration: AppDecoration.outlineGray100,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      CustomAppBar(
                          height: 30.v,
                          leadingWidth: 44.h,
                          leading: AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              margin: EdgeInsets.only(
                                  left: 20.h, top: 1.v, bottom: 5.v),
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          centerTitle: true,
                          title: AppbarTitle(text: "lbl_my_cards".tr),
                          actions: [
                            AppbarImage1(
                                svgPath: ImageConstant.imgPlus,
                                margin: EdgeInsets.only(
                                    left: 16.h, right: 16.h, bottom: 6.v),
                                onTap: () {
                                  onTapPlusone();
                                })
                          ])
                    ])),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_select_payment_method".tr,
                          style: theme.textTheme.titleMedium),
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: controller.paymentList.length,
                        itemBuilder: (context, index) {
                          PaymentModel model = controller.paymentList[index];
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 20.v,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: model.image,
                                  width: 24.h,
                                  height: 24.h,
                                ),
                                SizedBox(width: 16.h),
                                Text(
                                  model.title!,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
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

  onTapPlusone() {
    Get.toNamed(
      AppRoutes.addNewCardScreen,
    );
  }
}

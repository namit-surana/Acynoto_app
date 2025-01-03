import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';
import '../opoment_booking_success_screen/opoment_booking_success_screen.dart';
import 'controller/payment_method_controller.dart';
import 'models/payment_method_model.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

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
                    title: AppbarTitle(text: "lbl_payment_method".tr),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_select_payment_method".tr,
                      style: theme.textTheme.titleMedium),
                  GetBuilder<PaymentMethodController>(
                    init: PaymentMethodController(),
                    builder: (controller) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: controller.paymentList.length,
                        itemBuilder: (context, index) {
                          PaymentModel model = controller.paymentList[index];
                          return GestureDetector(
                            onTap: () {
                              controller.selected.value = index;
                              controller.update();
                            },
                            child: Container(
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
                                  ),
                                  SizedBox(width: 16.h),
                                  Text(
                                    model.title!,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: controller.selected.value == index
                                        ? ImageConstant.radioSelect
                                        : ImageConstant.radioUnselect,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child:
                    Text("lbl_50_00".tr, style: theme.textTheme.headlineSmall)),
            CustomElevatedButton(
              width: 206.h,
              text: "lbl_pay_now".tr,
              onTap: () {
                onTapPaynow(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  onTapPaynow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return OpomentBookingSuccessScreen();
      },
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

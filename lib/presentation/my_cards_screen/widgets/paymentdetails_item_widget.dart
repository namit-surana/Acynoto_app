import '../controller/my_cards_controller.dart';
import '../models/paymentdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class PaymentdetailsItemWidget extends StatelessWidget {
  PaymentdetailsItemWidget(
    this.paymentdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentdetailsItemModel paymentdetailsItemModelObj;

  var controller = Get.find<MyCardsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgIcPaypal,
            height: 34.adaptSize,
            width: 34.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Obx(
              () => Text(
                paymentdetailsItemModelObj.cashondelivery!.value,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBold16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

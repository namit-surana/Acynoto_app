import '../controller/patient_details_controller.dart';
import '../models/userpackage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserpackageItemWidget extends StatelessWidget {
  UserpackageItemWidget(
    this.userpackageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserpackageItemModel userpackageItemModelObj;

  var controller = Get.find<PatientDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillGrayTL27,
            child: CustomImageView(
              svgPath: ImageConstant.imgCar,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    userpackageItemModelObj.massagingText!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    userpackageItemModelObj.chatText!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    userpackageItemModelObj.priceText!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumBold16,
                  ),
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
    );
  }
}

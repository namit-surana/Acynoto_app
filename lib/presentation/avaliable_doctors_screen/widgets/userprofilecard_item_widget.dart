import '../controller/avaliable_doctors_controller.dart';
import '../models/avaliable_doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';
import 'package:medi_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofilecardItemWidget extends StatelessWidget {
  UserprofilecardItemWidget(
    this.userprofilecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AvailableDoctorsItemModel userprofilecardItemModelObj;

  var controller = Get.find<AvaliableDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v, horizontal: 8.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: userprofilecardItemModelObj.image,
            height: 94.adaptSize,
            width: 94.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userprofilecardItemModelObj.name!,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 13.v),
                          Text(
                            userprofilecardItemModelObj.profession!,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMedium14,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.setFavProduct(userprofilecardItemModelObj);
                      },
                      child: CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(bottom: 34.v),
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillGrayTL14,
                        child: CustomImageView(
                          svgPath: userprofilecardItemModelObj.isFavourite!
                              ? ImageConstant.imgFavoriteSelect
                              : ImageConstant.imgFavoriteUnselect,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStarAmber50001,
                      height: 15.v,
                      width: 15.h,
                      margin: EdgeInsets.only(bottom: 1),
                    ),
                    SizedBox(width: 3.h),
                    Text(
                      userprofilecardItemModelObj.rate!,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Text(
                        userprofilecardItemModelObj.reviews!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    CustomOutlinedButton(
                      width: 100.h,
                      text: "lbl_book_now".tr,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

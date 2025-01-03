import '../controller/favorite1_controller.dart';
import '../models/favorite1_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserprofile,
  }) : super(
          key: key,
        );

  FavouriteItemModel userprofileItemModelObj;

  var controller = Get.find<Favorite1Controller>();

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofile?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 110.v,
              width: 174.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: userprofileItemModelObj.image,
                    height: 110.v,
                    width: 174.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      right: 8.h,
                    ),
                    padding: EdgeInsets.all(3.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFavoriteBlack900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              userprofileItemModelObj.name!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              userprofileItemModelObj.profession!,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMedium14,
            ),
            SizedBox(height: 8.v),
            Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgStar,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_4_0".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_4_2k_reviews".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

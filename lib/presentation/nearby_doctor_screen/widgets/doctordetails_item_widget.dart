import '../controller/nearby_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

import '../models/nearby_doctor_model.dart';

// ignore: must_be_immutable
class DoctordetailsItemWidget extends StatelessWidget {
  DoctordetailsItemWidget(
    this.doctordetailsItemModelObj, {
    Key? key,
    this.onTapDoctordetails,
  }) : super(
          key: key,
        );

  NearByDoctorsItemModel doctordetailsItemModelObj;

  var controller = Get.find<NearbyDoctorController>();

  VoidCallback? onTapDoctordetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDoctordetails?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: doctordetailsItemModelObj.image,
                  height: 110.v,
                  width: 174.h,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                GestureDetector(
                  onTap: () {
                    controller.setFavProduct(doctordetailsItemModelObj);
                  },
                  child: CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      right: 8.h,
                    ),
                    padding: EdgeInsets.all(4.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      svgPath: doctordetailsItemModelObj.isFavourite!
                          ? ImageConstant.imgFavoriteSelect
                          : ImageConstant.imgFavoriteUnselect,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.v),
            Text(
              doctordetailsItemModelObj.name!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              doctordetailsItemModelObj.profession!,
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
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    doctordetailsItemModelObj.rate!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    doctordetailsItemModelObj.reviews!,
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

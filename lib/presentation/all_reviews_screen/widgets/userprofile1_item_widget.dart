import '../controller/all_reviews_controller.dart';
import '../models/all_reviews_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllReviewItemsModel userprofile1ItemModelObj;

  var controller = Get.find<AllReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomImageView(
                imagePath: userprofile1ItemModelObj.image,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile1ItemModelObj.name!,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBlack90001,
                    ),
                    SizedBox(height: 8.v),
                    rating_star_row(),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
            ),
            child:Container(
              width: 364.h,
              child: Text(
                userprofile1ItemModelObj.msg!,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: CustomTextStyles.bodyLargeBlack90001.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget rating_star_row() {
    return Row(children: [
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgIcstar,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
      CustomImageView(
          svgPath: ImageConstant.imgStarGray,
          height: 14.v,
          width: 14.v,
          margin: EdgeInsets.only(left: 2, bottom: 1)),
    ]);
  }
}

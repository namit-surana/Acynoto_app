import '../controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

import '../models/search_model.dart';

// ignore: must_be_immutable
class ListdrestherItemWidget extends StatelessWidget {
  ListdrestherItemWidget(
    this.listdrestherItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel listdrestherItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v, horizontal: 8.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: listdrestherItemModelObj.image,
            height: 94.adaptSize,
            width: 94.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 9.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listdrestherItemModelObj.name!,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 13.v),
                              Text(
                                "lbl_cardiologists".tr,
                                style: CustomTextStyles.bodyMedium14,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.setFavProduct(listdrestherItemModelObj);
                        },
                        child: CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(
                            bottom: 33.v,
                          ),
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillGrayTL14,
                          child: CustomImageView(
                            svgPath: listdrestherItemModelObj.isFavourite!
                                ? ImageConstant.imgFavoriteSelect
                                : ImageConstant.imgFavoriteUnselect,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStarAmber50001,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
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
          ),
        ],
      ),
    );
  }
}

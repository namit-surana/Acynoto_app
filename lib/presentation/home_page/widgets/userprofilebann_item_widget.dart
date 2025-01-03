import '../controller/home_controller.dart';
import '../models/userprofilebann_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilebannItemWidget extends StatelessWidget {
  UserprofilebannItemWidget(
    this.userprofilebannItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilebannItemModel userprofilebannItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 134.v,
            width: 31.h,
            decoration: AppDecoration.fillBlue100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskgroup,
              height: 134.v,
              width: 31.h,
              alignment: Alignment.center,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 16.h),
            color: appTheme.red100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 134.v,
              width: 333.h,
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskgroup134x333,
                    height: 134.v,
                    width: 333.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_find_the_best_doctor".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 1.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_book_now".tr,
                                  style: CustomTextStyles.titleMediumMonaSans,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgIcarrowright,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 16.h),
            color: appTheme.indigo100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 134.v,
              width: 32.h,
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskgroupLime900,
                    height: 134.v,
                    width: 32.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "msg_find_the_best_doctor".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_book_now".tr,
                            style: CustomTextStyles.titleMediumMonaSans,
                          ),
                        ),
                      ],
                    ),
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

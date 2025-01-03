import '../controller/chat_one_controller.dart';
import '../models/chat_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofilecard1ItemWidget extends StatelessWidget {
  Userprofilecard1ItemWidget(
    this.userprofilecard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TabCallModel userprofilecard1ItemModelObj;

  var controller = Get.find<ChatOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: userprofilecard1ItemModelObj.image,
                  height: 58.v,
                  width: 58.v,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        userprofilecard1ItemModelObj.name!,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        userprofilecard1ItemModelObj.msg!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(
                top: 9.v,
                right: 3.h,
                bottom: 9.v,
              ),
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.outlineBlackTL20,
              child: CustomImageView(
                svgPath: userprofilecard1ItemModelObj.isVdCall == true
                    ? ImageConstant.videoCall
                    : ImageConstant.audioCall,
                color: appTheme.whiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

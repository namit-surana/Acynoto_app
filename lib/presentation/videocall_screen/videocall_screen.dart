import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

import 'controller/videocall_controller.dart';

class VideocallScreen extends GetWidget<VideocallController> {
  const VideocallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
                image: AssetImage(ImageConstant.img05videocall),
                fit: BoxFit.cover)),
        child: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: 926.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSmallimage,
                    height: 169.v,
                    width: 140.v,
                    radius: BorderRadius.circular(12.h),
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 19.h, bottom: 135.v)),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 82.h, vertical: 40.v),
                    decoration: AppDecoration.gradientBlackToBlack,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                            height: 58.v,
                            width: 58.v,
                            margin: EdgeInsets.only(top: 822.v),
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillGrayTL29,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgMicrophone)),
                        CustomIconButton(
                          height: 58.v,
                          width: 58.v,
                          margin: EdgeInsets.only( top: 822.v),
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillRed,
                          onTap: () {
                            onTapBtnIconbutton();
                          },
                          child: CustomImageView(
                            svgPath: ImageConstant.imgGroup29WhiteA700,
                          ),
                        ),
                        CustomIconButton(
                            height: 58.v,
                            width: 58.v,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillGrayTL29,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgGroup29Black900)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnIconbutton() {
    Get.toNamed(
      AppRoutes.addReviewScreen,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import '../all_reviews_screen/widgets/userprofile1_item_widget.dart';
import 'controller/all_reviews_controller.dart';
import 'models/all_reviews_model.dart';

class AllReviewsScreen extends GetWidget<AllReviewsController> {
  const AllReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              decoration: AppDecoration.outlineGray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  CustomAppBar(
                    leadingWidth: 44.h,
                    leading: AppbarImage(
                        svgPath: ImageConstant.imgArrowleft,
                        margin: EdgeInsets.only(left: 20.h, bottom: 5.v),
                        onTap: () {
                          onTapArrowleftone();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_add_your_review".tr),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.v),
            Expanded(
              child: ListView.separated(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                itemCount: controller.categoryList.length,
                itemBuilder: (context, index) {
                  AllReviewItemsModel model = controller
                      .categoryList[index];
                  return Userprofile1ItemWidget(model);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapArrowleftone() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

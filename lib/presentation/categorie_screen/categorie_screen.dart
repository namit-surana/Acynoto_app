import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

import '../categorie_screen/widgets/categoriescolum_item_widget.dart';
import 'controller/categorie_controller.dart';
import 'models/categoriescolum_item_model.dart';

class CategorieScreen extends GetWidget<CategorieController> {
  const CategorieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              decoration: AppDecoration.outlineGray100,
              child: Column(
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
                      title: AppbarTitle(text: "Log a Symptom".tr))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.h),
                child: GridView.builder(
                 shrinkWrap: true,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     mainAxisExtent: 127.v,
                     crossAxisCount: 3,
                     mainAxisSpacing: 18.h,
                     crossAxisSpacing: 18.h),
                 physics: BouncingScrollPhysics(),
                 itemCount: controller.categoryList.length,
                 itemBuilder: (context, index) {
                   CategorieModel model = controller.categoryList[index];
                  return CategoriescolumItemWidget(model);
                 },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

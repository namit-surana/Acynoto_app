import 'package:flutter/material.dart' hide SearchController;
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_text_form_field.dart';

import '../search_screen/widgets/listdresther_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_model.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                decoration: AppDecoration.outlineGray100,
                child: CustomAppBar(
                    leadingWidth: 44.h,
                    leading: AppbarImage(
                        svgPath: ImageConstant.imgArrowleft,
                        margin:
                        EdgeInsets.only(left: 20.h, top: 1.v, bottom: 3.v),
                        onTap: () {
                          onTapArrowleftone();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_search2".tr))),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      SizedBox(height: 24.v),
                      CustomTextFormField(
                          controller: controller.searchoneController,
                          hintText: "lbl_cardiologists".tr,
                          textInputAction: TextInputAction.done,
                          autofocus: false,
                          borderSide: BorderSide.none,
                          prefix: Container(
                              margin:
                              EdgeInsets.fromLTRB(16.h, 16.v, 12.h, 16.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgContrast)),
                          prefixConstraints: BoxConstraints(maxHeight: 56.v),
                          suffix: Container(
                              margin:
                              EdgeInsets.fromLTRB(30.h, 14.v, 18.h, 14.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          suffixConstraints: BoxConstraints(maxHeight: 56.v),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.v),
                          fillColor: appTheme.gray10001),
                      SizedBox(height: 16.v),
                      GetBuilder<SearchController>(
                          init: SearchController(),
                          builder: (controller) {
                        return Expanded(
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 16.v);
                            },
                            itemCount: controller.searchList.length,
                            itemBuilder: (context, index) {
                              SearchItemModel model = controller
                                  .searchList[index];
                              return ListdrestherItemWidget(model);
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}

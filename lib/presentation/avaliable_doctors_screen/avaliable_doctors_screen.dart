import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

import '../avaliable_doctors_screen/widgets/userprofilecard_item_widget.dart';
import 'controller/avaliable_doctors_controller.dart';
import 'models/avaliable_doctors_model.dart';

class AvaliableDoctorsScreen extends GetWidget<AvaliableDoctorsController> {
  const AvaliableDoctorsScreen({Key? key}) : super(key: key);

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
              child: CustomAppBar(
                leadingWidth: 44.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 2.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_available_doctors".tr),
              ),
            ),
            Expanded(
              child: GetBuilder<AvaliableDoctorsController>(
                  init: AvaliableDoctorsController(),
                  builder: (controller) {
                    return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.only(left: 16.h, right: 16.h, top: 24.v),
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: controller.categoryList.length,
                      itemBuilder: (context, index) {
                        AvailableDoctorsItemModel model =
                            controller.categoryList[index];
                        return UserprofilecardItemWidget(model);
                      },
                    );
                  }),
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

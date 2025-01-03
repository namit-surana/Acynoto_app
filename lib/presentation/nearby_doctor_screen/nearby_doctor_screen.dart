import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import '../nearby_doctor_screen/widgets/doctordetails_item_widget.dart';
import 'controller/nearby_doctor_controller.dart';
import 'models/nearby_doctor_model.dart';

class NearbyDoctorScreen extends GetWidget<NearbyDoctorController> {
  const NearbyDoctorScreen({Key? key}) : super(key: key);

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
                    title: AppbarTitle(text: "Book Consultation".tr),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GetBuilder<NearbyDoctorController>(
                  init: NearbyDoctorController(),
                  builder: (controller) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 0.v, right: 16.h),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 212.v,
                            crossAxisCount: 2,
                            mainAxisSpacing: 16.h,
                            crossAxisSpacing: 16.h),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.categoryList.length,
                        itemBuilder: (context, index) {
                          NearByDoctorsItemModel model =
                              controller.categoryList[index];
                          return DoctordetailsItemWidget(
                            model,
                            onTapDoctordetails: () {
                              onTapDoctordetails();
                            },
                          );
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  onTapDoctordetails() {
    Get.toNamed(AppRoutes.doctorDetailsScreen);
  }

  onTapArrowleftone() {
    Get.back();
  }
}

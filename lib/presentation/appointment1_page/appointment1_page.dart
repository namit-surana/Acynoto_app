import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_elevated_button.dart';
import '../appointment1_page/widgets/doctordetails1_item_widget.dart';
import 'controller/appointment1_controller.dart';
import 'models/appointment1_model.dart';

// ignore_for_file: must_be_immutable
class Appointment1Page extends StatelessWidget {
  Appointment1Page({Key? key}) : super(key: key);

  Appointment1Controller controller =
      Get.put(Appointment1Controller(Appointment1Model().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 19.v),
            decoration: AppDecoration.outlineGray1001,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                CustomAppBar(
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_appointment".tr),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h, top: 24.v, right: 10.h),
              child: controller.categoryList.isEmpty
                  ? Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCheck21,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                          ),
                          SizedBox(height: 12.v),
                          Text("msg_no_appointment_yet".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 18.v),
                          SizedBox(
                              width: 361.h,
                              child: Text("msg_same_day_appointments".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.50))),
                          CustomElevatedButton(
                            text: "lbl_go_to_home".tr,
                            margin: EdgeInsets.fromLTRB(36.h, 29.v, 36.h, 1.v),
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.homeContainerScreen,
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                 padding: EdgeInsets.symmetric(horizontal: 4.h),
                      itemCount: controller.categoryList.length,
                      itemBuilder: (context, index) {
                        AppointmentsItemsModel model = controller
                            .categoryList[index];
                        return Doctordetails1ItemWidget(
                          model,
                          onTapDoctordetails: () {
                            onTapDoctordetails();
                          },
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  onTapDoctordetails() {
    Get.toNamed(
      AppRoutes.appointmentDetailsScreen,
    );
  }
}

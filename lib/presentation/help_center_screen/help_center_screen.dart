import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/help_center_screen/models/help_center_model.dart';
import 'package:medi_app/widgets/app_bar/appbar_image.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/help_center_controller.dart';

class HelpCenterScreen extends GetWidget<HelpCenterController> {
  const HelpCenterScreen({Key? key}) : super(key: key);

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
                decoration: AppDecoration.outlineGray300,
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
                          title: AppbarTitle(text: "Help Center".tr))
                    ])),

            Expanded(
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.h ,    vertical: 24.v),
                itemBuilder: (context, index) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                        expansionTileTheme: ExpansionTileThemeData(
                          iconColor: appTheme.black900,
                          collapsedIconColor: appTheme.black900,
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.h),
                        border: Border.all(color: appTheme.divider),
                        color: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        title: Text(helpDataList[index].que!,
                            style: CustomTextStyles.titleMedium16),
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text("msg_to_leave_the_visit".tr,
                                maxLines: 3,
                                 textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.50)),
                          ),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: 7,
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

import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../favorite1_page/widgets/userprofile_item_widget.dart';
import 'controller/favorite1_controller.dart';
import 'models/favorite1_model.dart';

// ignore_for_file: must_be_immutable
class Favorite1Page extends StatelessWidget {
  Favorite1Page({Key? key}) : super(key: key);

  Favorite1Controller controller =
      Get.put(Favorite1Controller(Favorite1Model().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.white,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 19.v),
                decoration: AppDecoration.outlineGray1001,
                child: CustomAppBar(
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_favorite".tr))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: controller.categoryList.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCheck21,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "lbl_no_favorite_yet".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 18.v),
                          SizedBox(
                            width: 353.h,
                            child: Text(
                              "msg_no_favorite_the".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          CustomElevatedButton(
                            text: "lbl_go_to_home".tr,
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.homeContainerScreen,
                              );
                            },
                            margin: EdgeInsets.fromLTRB(32.h, 29.v, 32.h, 1.v),
                          ),
                        ],
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 213.v,
                            crossAxisCount: 2,
                            mainAxisSpacing: 16.h,
                            crossAxisSpacing: 16.h),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.categoryList.length,
                        itemBuilder: (context, index) {
                          FavouriteItemModel model =
                              controller.categoryList[index];
                          return UserprofileItemWidget(
                            model,
                            onTapUserprofile: () {
                              onTapUserprofile();
                            },
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapUserprofile() {
    Get.toNamed(
      AppRoutes.doctorDetailsScreen,
    );
  }
}

import '../../widgets/custom_elevated_button.dart';
import '../chat1_page/chat1_page.dart';
import 'controller/chat_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/chat_one_page/chat_one_page.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ChatTabContainerScreen extends StatefulWidget {
  const ChatTabContainerScreen({super.key});

  @override
  State<ChatTabContainerScreen> createState() => _ChatTabContainerScreenState();
}

class _ChatTabContainerScreenState extends State<ChatTabContainerScreen> {
  ChatTabContainerController controller = Get.put(ChatTabContainerController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: AppDecoration.outlineGray1001,
              child: CustomAppBar(
                centerTitle: true,
                title: AppbarTitle(
                  text: "lbl_chat".tr,
                ),
              ),
            ),
            SizedBox(height: 24.v),
            controller.isFirstTime.isTrue
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCheck21,
                          height: 120.adaptSize,
                          width: 120.adaptSize,
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "lbl_no_chats_yet".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 18.v),
                        SizedBox(
                          width: 361.h,
                          child: Text(
                            "msg_massage_can_improve".tr,
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
                          margin: EdgeInsets.fromLTRB(36.h, 29.v, 36.h, 1.v),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 36.v,
                          decoration: AppDecoration.outlineGray1001,
                          child: Theme(
                            data: ThemeData(
                              dividerColor: appTheme.gray100,
                              // tabBarTheme: TabBarTheme(
                              //   indicatorSize: TabBarIndicatorSize.tab
                              // ),
                            ),
                            child: TabBar(
                              controller: controller.tabController,
                              // isScrollable: true,

                              indicatorSize: TabBarIndicatorSize.tab,
                              labelColor: theme.colorScheme.primary,
                              labelStyle: TextStyle(
                                fontSize: 18.fSize,
                                fontWeight: FontWeight.w600,
                              ),
                              unselectedLabelStyle: TextStyle(
                                fontSize: 18.fSize,
                                fontWeight: FontWeight.w600,
                              ),
                              unselectedLabelColor: appTheme.gray700,
                              indicatorColor: theme.colorScheme.primary,
                              automaticIndicatorColorAdjustment: true,
                              tabs: [
                                Tab(
                                  text: 'lbl_chat'.tr,
                                ),
                                Tab(
                                  text: 'lbl_call'.tr,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Chat1Page(),
                              ChatOnePage(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

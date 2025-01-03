import 'controller/chat_controller.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';


// ignore: must_be_immutable
class ChatPage extends StatelessWidget {
  ChatPage({Key? key})
      : super(
          key: key,
        );

  ChatController controller = Get.put(ChatController(ChatModel().obs));

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
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: AppDecoration.outlineGray100,
              child: CustomAppBar(
                centerTitle: true,
                title: AppbarTitle(
                  text: "lbl_chat".tr,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 33.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCheck21,
                    height: 64.adaptSize,
                    width: 64.adaptSize,
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
            ),
          ],
        ),
      ),
    );
  }
}

import '../chat1_page/widgets/listdresther1_item_widget.dart';
import '../chat_tab_container_screen/models/chat_tab_container_model.dart';
import 'controller/chat1_controller.dart';
import 'models/chat1_model.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';

// ignore: must_be_immutable
class Chat1Page extends StatelessWidget {
  Chat1Page({Key? key})
      : super(
          key: key,
        );

  Chat1Controller controller = Get.put(Chat1Controller(Chat1Model().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 16.h,
          ),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.chatDetailsScreen);
            },
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(height: 16.v);
              },
              itemCount: controller
                  .categoryList.length,
              itemBuilder: (context, index) {
                TabChatModel model = controller
                    .categoryList[index];
                return Listdresther1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

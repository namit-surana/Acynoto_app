import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import '../chat_one_page/widgets/userprofilecard1_item_widget.dart';
import 'controller/chat_one_controller.dart';
import 'models/chat_one_model.dart';

// ignore_for_file: must_be_immutable
class ChatOnePage extends StatelessWidget {
  ChatOnePage({Key? key}) : super(key: key);

  ChatOneController controller = Get.put(ChatOneController(ChatOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.v),
              SizedBox(
                height: 733.v,
                width: double.maxFinite,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  padding:
                      EdgeInsets.only(left: 16.h, right: 16.h, bottom: 7.v),
                  itemCount: controller.categoryList.length,
                  itemBuilder: (context, index) {
                    TabCallModel model = controller.categoryList[index];
                    return Userprofilecard1ItemWidget(model);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapColumniconone() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapColumnfileone() {
    Get.toNamed(
      AppRoutes.appointmentScreen,
    );
  }

  onTapColumnfavorite() {
    Get.toNamed(
      AppRoutes.favoriteScreen,
    );
  }
}

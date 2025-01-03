import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/chat_tab_container_screen/models/chat_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatTabContainerScreen.
///
/// This class manages the state of the ChatTabContainerScreen, including the
/// current chatTabContainerModelObj
class ChatTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ChatTabContainerModel> chatTabContainerModelObj =
      ChatTabContainerModel().obs;

  // late TabController tabviewController =
  //     Get.put(TabController(vsync: this, length: 2));

   TabController? tabController;

   RxBool isFirstTime = false.obs;



}

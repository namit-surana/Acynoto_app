import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Constant {
  static closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });
  }

  static backToPrev(BuildContext context) {
    Get.back();
  }

  static sendToNextScreen(BuildContext context, String routes,
      {var arguments}) {
    if (arguments != null) {
      Get.toNamed(routes, arguments: arguments);
    } else {
      Get.toNamed(routes);
    }
  }
}

AppBar getInVisibleAppBar(
    {Color color = Colors.transparent,
      Brightness? statusBarBrightness,
      Brightness? statusBarIconBrightness}) {
  return AppBar(
    toolbarHeight: 0,
    elevation: 0,
    backgroundColor: color,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: statusBarIconBrightness,
      statusBarBrightness: statusBarBrightness,
    ),
  );
}


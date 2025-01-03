import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/pref_utils.dart';
import '../../../routes/app_routes.dart';
import '../models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  Future<void> onReady() async {
    bool isLogin = await PrefUtils.getLogin();
    bool isIntro = await PrefUtils.getIntro();
    print("isLogin=============$isLogin");
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isIntro) {
          Get.toNamed(
            AppRoutes.onboarding1Screen,
          );
        } else if (isLogin) {
          Get.toNamed(
            AppRoutes.logInScreen,
          );
          debugPrint("is Login ==== $isLogin");
        } else {
          Get.toNamed(
            AppRoutes.homeContainerScreen,
          );
        }
      },
    );
  }
}

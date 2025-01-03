import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medi_app/core/app_export.dart';

import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: getInVisibleAppBar(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
                svgPath: ImageConstant.imgGroup, height: 91.v, width: 117.h),
            SizedBox(height: 16.v),
            Text("Acrynoto", style: theme.textTheme.displaySmall),
            SizedBox(height: 5.v)
          ],
        ),
      ),
    );
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
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
    ),
  );
}

import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/log_in_active_screen/models/log_in_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the LogInActiveScreen.
///
/// This class manages the state of the LogInActiveScreen, including the
/// current logInActiveModelObj
class LogInActiveController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LogInActiveModel> logInActiveModelObj = LogInActiveModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }

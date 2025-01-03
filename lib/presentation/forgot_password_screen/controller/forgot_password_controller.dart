import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/forgot_password_model.dart';

/// A controller class for the ForgotPasswordScreen.

///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
 TextEditingController emailController = TextEditingController();
 TextEditingController otpController = TextEditingController();

 Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

 @override
 void onInit() {
  // TODO: implement onInit
  emailController = TextEditingController(text: "");
  super.onInit();
 }

 String? emailValidator(String? value) {
  if (value!.isNotEmpty) {
   if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
       .hasMatch(value)) {
    return "Please enter a valid email address";
   }
   return null;
  }
  return "Please enter email address.";
 }

 void clearText() {
  emailController = TextEditingController(text: "");
  update();
 }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/reset_password_model.dart';

class ResetPasswordController extends GetxController {
 TextEditingController newpasswordController = TextEditingController();

 TextEditingController confirmpasswordController = TextEditingController();

 Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

 Rx<bool> isShowPassword = true.obs;

 Rx<bool> isShowPassword1 = true.obs;

 @override
 void onInit() {
  // TODO: implement onInit
  newpasswordController = TextEditingController(text: "");
  confirmpasswordController = TextEditingController(text: "");
  update();
  super.onInit();
 }

 void clearText() {
  newpasswordController = TextEditingController(text: "");
  confirmpasswordController = TextEditingController(text: "");
  update();
 }

 @override
 void onClose() {
  super.onClose();
  newpasswordController.dispose();
  confirmpasswordController.dispose();
 }
}

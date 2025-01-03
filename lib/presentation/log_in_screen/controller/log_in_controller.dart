import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/presentation/log_in_screen/models/log_in_model.dart';

class LogInController extends GetxController {
 TextEditingController emailController = TextEditingController();

 TextEditingController passwordController = TextEditingController();

 Rx<LogInModel> logInModelObj = LogInModel().obs;

 Rx<bool> isShowPassword = true.obs;

 Rx<bool> englishName = false.obs;

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

 String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
   return "Please enter a valid Password";
  }
  return null;
 }

 @override
 void onInit() {
  // TODO: implement onInit
  emailController = TextEditingController(text: "");
  passwordController = TextEditingController(text: "");
  super.onInit();
 }

 void clearText() {
  emailController = TextEditingController(text: "");
  passwordController = TextEditingController(text: '');
  update();
 }

 @override
 void onClose() {
  super.onClose();
  emailController.dispose();
  passwordController.dispose();
 }
}

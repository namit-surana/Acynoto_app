import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/sign_up_model.dart';


class SignUpController extends GetxController {
 TextEditingController fullNameController = TextEditingController();

 TextEditingController emailController = TextEditingController();

 TextEditingController passwordController = TextEditingController();
 TextEditingController phoneNumController = TextEditingController();

 Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

 Rx<bool> scoreValue = false.obs;

 Rx<bool> isShowPassword = true.obs;

 RxString code = "+91".obs;
 RxString country = "India".obs;

 changeCountry(String value, String value1, BuildContext context) {
  country.value = value;
  code.value = value1;
  update();
 }

 @override
 void onInit() {
  // TODO: implement onInit
  fullNameController = TextEditingController(text: "");
  emailController = TextEditingController(text: "");
  phoneNumController = TextEditingController(text: "");
  passwordController = TextEditingController(text: "");
  super.onInit();
 }

 void clearText() {
  fullNameController = TextEditingController(text: "");
  emailController = TextEditingController(text: "");
  phoneNumController = TextEditingController(text: "");
  passwordController = TextEditingController(text: "");
  update();
 }

 @override
 void onClose() {
  super.onClose();
  fullNameController.dispose();
  emailController.dispose();
  passwordController.dispose();
 }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerificationController extends GetxController with CodeAutoFill {
 TextEditingController otpController = TextEditingController();

 void clearText() {
  otpController = TextEditingController(text: "");
  update();
 }

 @override
 void codeUpdated() {
  otpController.text = code ?? '';
 }
}

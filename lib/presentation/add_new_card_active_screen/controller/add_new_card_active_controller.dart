import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/add_new_card_active_screen/models/add_new_card_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardActiveScreen.
///
/// This class manages the state of the AddNewCardActiveScreen, including the
/// current addNewCardActiveModelObj
class AddNewCardActiveController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController expirydateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardActiveModel> addNewCardActiveModelObj = AddNewCardActiveModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); expirydateController.dispose(); cvvController.dispose(); } 
 }

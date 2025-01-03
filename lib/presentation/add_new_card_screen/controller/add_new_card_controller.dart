import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController expirydateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); expirydateController.dispose(); cvvController.dispose(); } 
 }

import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/add_review_screen/models/add_review_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddReviewScreen.
///
/// This class manages the state of the AddReviewScreen, including the
/// current addReviewModelObj
class AddReviewController extends GetxController {TextEditingController fieldlableController = TextEditingController();

TextEditingController placeholderController = TextEditingController();

Rx<AddReviewModel> addReviewModelObj = AddReviewModel().obs;

@override void onClose() { super.onClose(); fieldlableController.dispose(); placeholderController.dispose(); } 
 }

import 'package:flutter/material.dart';

/// A controller class for the EditProfileScreen.
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/edit_profile_screen/models/edit_profile_model.dart';

///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  Rx<bool> scoreValue = false.obs;

  RxString code = "+91".obs;
  RxString country = "India".obs;

  changeCountry(String value, String value1, BuildContext context) {
   country.value = value;
   code.value = value1;
   update();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
  }
}

import 'package:flutter/material.dart';

/// A controller class for the PatientDetailsScreen.
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/patient_details_screen/models/patient_details_model.dart';

///
/// This class manages the state of the PatientDetailsScreen, including the
/// current patientDetailsModelObj
class PatientDetailsController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController fieldlableController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController placeholderController = TextEditingController();

  Rx<PatientDetailsModel> patientDetailsModelObj = PatientDetailsModel().obs;

  Rx<ChooseGenderModel> chooseGenderModelObj = ChooseGenderModel().obs;

  List<PackageModel> categoryList = PatientDetailsModel.getCategories();

  RxInt selected = 0.obs;


  onSelected(dynamic value) {
    for (var element in chooseGenderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    chooseGenderModelObj.value.dropdownItemList.refresh();
  }


  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    fieldlableController.dispose();
    genderController.dispose();
    placeholderController.dispose();
  }
}

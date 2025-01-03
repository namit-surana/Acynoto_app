import '../../../core/app_export.dart';

/// This class is used in the [doctordetails_item_widget] screen.

class DoctordetailsItemModel {
  DoctordetailsItemModel({
    this.doctorName,
    this.doctorSpecialty,
    this.id,
  }) {
    doctorName = doctorName ?? Rx("Dr. esther howard");
    doctorSpecialty = doctorSpecialty ?? Rx("Cardiologists");
    id = id ?? Rx("");
  }

  Rx<String>? doctorName;

  Rx<String>? doctorSpecialty;

  Rx<String>? id;
}

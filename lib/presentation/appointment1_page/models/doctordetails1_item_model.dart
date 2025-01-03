import '../../../core/app_export.dart';

/// This class is used in the [doctordetails1_item_widget] screen.

class Doctordetails1ItemModel {
  Doctordetails1ItemModel({
    this.doctorName,
    this.doctorSpecialty,
    this.customerNameTex,
    this.scheduleText,
    this.id,
  }) {
    doctorName = doctorName ?? Rx("Dr. esther howard");
    doctorSpecialty = doctorSpecialty ?? Rx("Orthopedic");
    customerNameTex = customerNameTex ?? Rx("Ronald richards");
    scheduleText = scheduleText ?? Rx("31 August 11:00 am to 12:30 pm");
    id = id ?? Rx("");
  }

  Rx<String>? doctorName;

  Rx<String>? doctorSpecialty;

  Rx<String>? customerNameTex;

  Rx<String>? scheduleText;

  Rx<String>? id;
}

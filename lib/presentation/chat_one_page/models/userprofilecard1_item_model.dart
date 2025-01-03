import '../../../core/app_export.dart';

/// This class is used in the [userprofilecard1_item_widget] screen.

class Userprofilecard1ItemModel {
  Userprofilecard1ItemModel({
    this.userName,
    this.id,
  }) {
    userName = userName ?? Rx("Dr. esther howard");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? id;
}

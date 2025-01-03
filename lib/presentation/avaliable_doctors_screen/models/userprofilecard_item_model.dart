import '../../../core/app_export.dart';

/// This class is used in the [userprofilecard_item_widget] screen.

class UserprofilecardItemModel {
  UserprofilecardItemModel({
    this.drestherhoward,
    this.cardiologists,
    this.id,
  }) {
    drestherhoward = drestherhoward ?? Rx("Dr. esther howard");
    cardiologists = cardiologists ?? Rx("Cardiologists");
    id = id ?? Rx("");
  }

  Rx<String>? drestherhoward;

  Rx<String>? cardiologists;

  Rx<String>? id;
}

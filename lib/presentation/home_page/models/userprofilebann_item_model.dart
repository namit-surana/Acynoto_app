import '../../../core/app_export.dart';

/// This class is used in the [userprofilebann_item_widget] screen.

class UserprofilebannItemModel {
  UserprofilebannItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

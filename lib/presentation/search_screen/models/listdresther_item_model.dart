import '../../../core/app_export.dart';

/// This class is used in the [listdresther_item_widget] screen.

class ListdrestherItemModel {
  ListdrestherItemModel({
    this.drestherhoward,
    this.id,
  }) {
    drestherhoward = drestherhoward ?? Rx("Dr. esther howard");
    id = id ?? Rx("");
  }

  Rx<String>? drestherhoward;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [listdresther1_item_widget] screen.

class Listdresther1ItemModel {
  Listdresther1ItemModel({
    this.robertfox,
    this.awesome,
    this.time,
    this.id,
  }) {
    robertfox = robertfox ?? Rx("Dr. esther howard");
    awesome = awesome ?? Rx("Hello are you here");
    time = time ?? Rx("20:00 PM");
    id = id ?? Rx("");
  }

  Rx<String>? robertfox;

  Rx<String>? awesome;

  Rx<String>? time;

  Rx<String>? id;
}

import 'dart:ui';

import '../../../core/app_export.dart';

/// This class is used in the [categoriescolum_item_widget] screen.

class CategoriescolumItemModel {
  CategoriescolumItemModel({
    this.categoryText,
    this.id,
  }) {
    categoryText = categoryText ?? Rx("Pulmonology");
    id = id ?? Rx("");
  }

  Rx<String>? categoryText;

  Rx<String>? id;
}

/// This class is used in the [cupcake_item_widget] screen.

class CategorieModel {
  String? image;
  String? title;
  Color? color;

  CategorieModel(
    this.image,
    this.title,
      this.color,
  );
}

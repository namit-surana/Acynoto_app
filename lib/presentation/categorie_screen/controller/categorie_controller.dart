import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/categorie_screen/models/categorie_model.dart';

import '../models/categoriescolum_item_model.dart';

/// A controller class for the CategorieScreen.
///
/// This class manages the state of the CategorieScreen, including the
/// current categorieModelObj
class CategorieController extends GetxController {
  // Rx<CategoriesModel> categorieModelObj = CategoriesModel().obs;
  List<CategorieModel> categoryList = CategoriesModel.getCategories();
}

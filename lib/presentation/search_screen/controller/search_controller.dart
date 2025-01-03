import 'package:flutter/material.dart';

/// A controller class for the SearchScreen.
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/search_screen/models/search_model.dart';

///
/// This class manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchController extends GetxController {
  TextEditingController searchoneController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  List<SearchItemModel> searchList = SearchModel.getSearch();

  void setFavProduct(data) {
    data.isFavourite = !data.isFavourite!;
    update();
  }
}

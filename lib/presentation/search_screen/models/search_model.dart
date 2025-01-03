import '../../../core/app_export.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  // Rx<List<ListdrestherItemModel>> listdrestherItemList =
  //     Rx(List.generate(7, (index) => ListdrestherItemModel()));

  static List<SearchItemModel> getSearch() {
    return [
      SearchItemModel(
        ImageConstant.nearByOne,
        "Dr. esther howard",
        false,
      ),
      SearchItemModel(
        ImageConstant.avaiTwo,
        "Dr. robert fox",
        false,
      ),
      SearchItemModel(
        ImageConstant.nearByFour,
        "Dr. john richards",
        false,
      ),
      SearchItemModel(
        ImageConstant.nearByTwo,
        'Dr. robert fox',
        false,
      ),
      SearchItemModel(
        ImageConstant.avaiFive,
        "Dr. kristin watson",
        false,
      ),
      SearchItemModel(
        ImageConstant.avaiSix,
        "Dr. jenny wilson",
        false,
      ),
      SearchItemModel(
        ImageConstant.avaiSeven,
        "Dr. Esther howard",
        false,
      ),
    ];
  }
}

class SearchItemModel {
  String? image;
  String? name;
  bool? isFavourite;

  SearchItemModel(
    this.image,
    this.name,
    this.isFavourite,
  );
}

import '../../../core/app_export.dart';

/// This class defines the variables used in the [favorite1_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Favorite1Model {
  // Rx<List<UserprofileItemModel>> userprofileItemList =
  //     Rx(List.generate(8, (index) => UserprofileItemModel()));


  static List<FavouriteItemModel> getCategories(){
    return [
      FavouriteItemModel(ImageConstant.nearByOne,"Dr. esther howard","Cardiologists" ),
      FavouriteItemModel(ImageConstant.nearByTwo,"Dr. robert fox","Pulmonology"),
      FavouriteItemModel(ImageConstant.nearByThree,"Dr. jenny wilson","General"),
      FavouriteItemModel(ImageConstant.nearByFour,"Dr. johnson howard","Neurologist"),
      FavouriteItemModel(ImageConstant.nearByFive,"Dr. john richards","Dentist"),
      FavouriteItemModel(ImageConstant.nearBySix,"Dr. kristin watson ","Hematology"),
      FavouriteItemModel(ImageConstant.nearBySeven,"Dr. Esther howard","Cardiologists"),
      FavouriteItemModel(ImageConstant.nearByEight,"Dr. Robert fox","Cardiologists"),
    ];
  }
}

class FavouriteItemModel {
  String? image;
  String? name;
  String? profession;

  FavouriteItemModel(
    this.image,
    this.name,
    this.profession,
  );
}

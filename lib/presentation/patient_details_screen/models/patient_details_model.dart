import '../../../core/app_export.dart';

/// This class defines the variables used in the [patient_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PatientDetailsModel {
  // Rx<List<UserpackageItemModel>> userpackageItemList =
  //     Rx(List.generate(3, (index) => UserpackageItemModel()));

  static List<PackageModel> getCategories(){
    return [
      PackageModel(ImageConstant.packageOne,"Messaging" ,'Chat with doctor',"\$25.00"),
      PackageModel(ImageConstant.packageTwo,"Video call",'Video Call with doctor',"\$50.00"),
      PackageModel(ImageConstant.packageThree,"Visit clinic",'Visit doctor clinic',"\$20.00"),
    ];
  }
}


class PackageModel {
  String? image;
  String? title;
  String? subTitle;
  String? price;

  PackageModel(
      this.image,
      this.title,
      this.subTitle,
      this.price,
      );
}

class ChooseGenderModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Male",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Female",
    ),
  ]);
}
import '../../../core/app_export.dart';

/// This class defines the variables used in the [avaliable_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AvaliableDoctorsModel {
  // Rx<List<UserprofilecardItemModel>> userprofilecardItemList =
  //     Rx(List.generate(7, (index) => UserprofilecardItemModel()));


  static List<AvailableDoctorsItemModel> getAvailableDoctors() {
    return [
      AvailableDoctorsItemModel(
        ImageConstant.nearByOne,
        "Dr. esther howard",
        'Cardiologists',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.avaiTwo,
        "Dr. robert fox",
        'Pulmonology',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.nearByFour,
        "Dr. john richards",
        'General',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.nearByTwo,
        'Dr. robert fox',
        'Neurologist',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.avaiFive,
        "Dr. kristin watson",
        'Hematology',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.avaiSix,
        "Dr. jenny wilson",
        'Dentist',
        "4.0",
        "4.2k reviews",
        false,
      ),
      AvailableDoctorsItemModel(
        ImageConstant.avaiSeven,
        "Dr. Esther howard",
        'Cardiologists',
        "4.0",
        "4.2k reviews",
        false,
      ),
    ];
  }

}

class AvailableDoctorsItemModel {
  String? image;
  String? name;
  String? profession;
  String? rate;
  String? reviews;
  bool? isFavourite;

  AvailableDoctorsItemModel(
      this.image,
      this.name,
      this.profession,
      this.rate,
      this.reviews,
      this.isFavourite,
      );
}


import '../../../core/app_export.dart';

class NearbyDoctorModel {
  // Rx<List<DoctordetailsItemModel>> doctordetailsItemList =
  //     Rx(List.generate(8, (index) => DoctordetailsItemModel()));

  static List<NearByDoctorsItemModel> getNearByDoctors() {
    return [
      NearByDoctorsItemModel(
        ImageConstant.nearByOne,
        "Dr. esther howard",
        'Cardiologists',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearByTwo,
        "Dr. robert fox",
        'Pulmonology',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearByThree,
        "Dr. jenny wilson",
        'General',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearByFour,
       ' Dr. johnson howard',
        'Neurologist',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearByFive,
        "Dr. john richards",
        'Dentist',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearBySix,
        "Dr. kristin watson",
        'Hematology',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearBySeven,
        "Dr. Esther howard",
        'Cardiologists',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
      NearByDoctorsItemModel(
        ImageConstant.nearByEight,
        "Dr. Robert fox",
        'Cardiologists',
        "4.0",
        "(4.2k reviews)",
        false,
      ),
    ];
  }
}

class NearByDoctorsItemModel {
  String? image;
  String? name;
  String? profession;
  String? rate;
  String? reviews;
  bool? isFavourite;

  NearByDoctorsItemModel(
    this.image,
    this.name,
    this.profession,
    this.rate,
    this.reviews,
    this.isFavourite,
  );
}

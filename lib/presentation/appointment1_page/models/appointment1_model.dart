import '../../../core/app_export.dart';

/// This class defines the variables used in the [appointment1_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Appointment1Model {
  // Rx<List<Doctordetails1ItemModel>> doctordetails1ItemList =
  //     Rx(List.generate(5, (index) => Doctordetails1ItemModel()));

  static List<AppointmentsItemsModel> getAllAppointments() {
    return [
      AppointmentsItemsModel(ImageConstant.appointOne, "Dr. esther howard",
          "Orthopedic", "Ronald richards"),
      AppointmentsItemsModel(ImageConstant.appointTwo, "Dr. jenny wilson",
          'General', "John richards"),
      AppointmentsItemsModel(ImageConstant.appointThree, "Dr. john richards",
          'Dentist', "Esther howards"),
      AppointmentsItemsModel(ImageConstant.appointFour, "Dr. kristin watson",
          "Hematology", "Ronald richards"),
      AppointmentsItemsModel(ImageConstant.appointOne, "Dr. Esther howard",
          "Orthopedic", "Ronald richards"),
    ];
  }
}

class AppointmentsItemsModel {
  String? image;
  String? name;
  String? profession;
  String? customer;

  AppointmentsItemsModel(
    this.image,
    this.name,
    this.profession,
    this.customer,
  );
}

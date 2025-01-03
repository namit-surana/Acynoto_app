import '../../../core/utils/image_constant.dart';

class AppointmentModel {

  static List<AppointmentItemModel> getAppointment() {
    return [
      AppointmentItemModel(
          ImageConstant.appointmentOne, "Dr. esther howard" , "Orthopedic"),
      AppointmentItemModel(
          ImageConstant.appointmentTwo, "Dr. Esther howard" , "Orthopedic"),
    ];
  }
}





class AppointmentItemModel {
  String? image;
  String? name;
  String? profession;
  AppointmentItemModel(
      this.image,
      this.name,
      this.profession,
      );
}
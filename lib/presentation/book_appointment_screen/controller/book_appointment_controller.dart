import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/book_appointment_screen/models/book_appointment_model.dart';

/// A controller class for the BookAppointmentScreen.
///
/// This class manages the state of the BookAppointmentScreen, including the
/// current bookAppointmentModelObj
class BookAppointmentController extends GetxController {
  Rx<BookAppointmentModel> bookAppointmentModelObj = BookAppointmentModel().obs;

  RxInt selected = 0.obs;
  RxInt slotSelected = 0.obs;
  RxInt afternoonSlotSelected = 0.obs;
}

List<DateModel> dateDataList = [
  DateModel(
    day: "Mon ".tr,
    date: "21".tr,
  ),
  DateModel(
    day: "Tue".tr,
    date: "22".tr,
  ),
  DateModel(
    day: "Wed".tr,
    date: "23".tr,
  ),
  DateModel(
    day: "Thu".tr,
    date: "24".tr,
  ),
  DateModel(
    day: "Fri".tr,
    date: "25".tr,
  ),
  DateModel(
    day: "Sat".tr,
    date: "26".tr,
  ),
];

List<MorningSlotModel> slotDataList = [
  MorningSlotModel(
    time: "08:00 AM",
  ),
  MorningSlotModel(
    time: "10:00 AM",
  ),
  MorningSlotModel(
    time: "11:00 AM",
  ),
];

List<AfternoonSlotModel> afternoonSlotDataList = [
  AfternoonSlotModel(
    time: "02:00 PM",
  ),
  AfternoonSlotModel(
    time: "04:00 PM",
  ),
];

class DateModel {
  String? date;
  String? day;

  DateModel({
    this.date,
    this.day,
  });
}

class MorningSlotModel {
  String? time;

  MorningSlotModel({
    this.time,
  });
}

class AfternoonSlotModel {
  String? time;

  AfternoonSlotModel({
    this.time,
  });
}

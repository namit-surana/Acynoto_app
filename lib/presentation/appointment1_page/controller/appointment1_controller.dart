import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/appointment1_page/models/appointment1_model.dart';/// A controller class for the Appointment1Page.
///
/// This class manages the state of the Appointment1Page, including the
/// current appointment1ModelObj
class Appointment1Controller extends GetxController {Appointment1Controller(this.appointment1ModelObj);

Rx<Appointment1Model> appointment1ModelObj;


List<AppointmentsItemsModel> categoryList = Appointment1Model.getAllAppointments();

 }

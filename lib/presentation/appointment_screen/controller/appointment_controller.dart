import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/appointment_screen/models/appointment_model.dart';/// A controller class for the AppointmentScreen.
///
/// This class manages the state of the AppointmentScreen, including the
/// current appointmentModelObj
class AppointmentController extends GetxController {Rx<AppointmentModel> appointmentModelObj = AppointmentModel().obs;

 }

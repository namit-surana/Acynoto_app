import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/appointment_details_screen/models/appointment_details_model.dart';/// A controller class for the AppointmentDetailsScreen.
///
/// This class manages the state of the AppointmentDetailsScreen, including the
/// current appointmentDetailsModelObj
class AppointmentDetailsController extends GetxController {Rx<AppointmentDetailsModel> appointmentDetailsModelObj = AppointmentDetailsModel().obs;

 }

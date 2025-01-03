import '../controller/appointment_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppointmentDetailsScreen.
///
/// This class ensures that the AppointmentDetailsController is created when the
/// AppointmentDetailsScreen is first loaded.
class AppointmentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentDetailsController());
  }
}

import '../controller/patient_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PatientDetailsScreen.
///
/// This class ensures that the PatientDetailsController is created when the
/// PatientDetailsScreen is first loaded.
class PatientDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientDetailsController());
  }
}

import '../controller/nearby_doctor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NearbyDoctorScreen.
///
/// This class ensures that the NearbyDoctorController is created when the
/// NearbyDoctorScreen is first loaded.
class NearbyDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyDoctorController());
  }
}

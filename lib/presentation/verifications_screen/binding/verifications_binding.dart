import '../controller/verifications_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationsScreen.
///
/// This class ensures that the VerificationsController is created when the
/// VerificationsScreen is first loaded.
class VerificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }
}

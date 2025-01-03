import '../controller/onboarding2_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Onboarding2Screen.
///
/// This class ensures that the Onboarding2Controller is created when the
/// Onboarding2Screen is first loaded.
class Onboarding2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Onboarding2Controller());
  }
}

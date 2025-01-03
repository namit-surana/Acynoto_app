import '../controller/opoment_booking_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OpomentBookingSuccessScreen.
///
/// This class ensures that the OpomentBookingSuccessController is created when the
/// OpomentBookingSuccessScreen is first loaded.
class OpomentBookingSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OpomentBookingSuccessController());
  }
}

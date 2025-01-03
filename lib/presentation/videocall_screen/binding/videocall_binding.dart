import '../controller/videocall_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideocallScreen.
///
/// This class ensures that the VideocallController is created when the
/// VideocallScreen is first loaded.
class VideocallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideocallController());
  }
}

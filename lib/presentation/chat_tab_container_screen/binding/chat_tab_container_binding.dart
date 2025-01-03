import '../controller/chat_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatTabContainerScreen.
///
/// This class ensures that the ChatTabContainerController is created when the
/// ChatTabContainerScreen is first loaded.
class ChatTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatTabContainerController());
  }
}

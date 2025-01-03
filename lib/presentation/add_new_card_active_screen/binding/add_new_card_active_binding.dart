import '../controller/add_new_card_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewCardActiveScreen.
///
/// This class ensures that the AddNewCardActiveController is created when the
/// AddNewCardActiveScreen is first loaded.
class AddNewCardActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewCardActiveController());
  }
}

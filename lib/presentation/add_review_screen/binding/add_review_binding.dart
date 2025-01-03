import '../controller/add_review_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddReviewScreen.
///
/// This class ensures that the AddReviewController is created when the
/// AddReviewScreen is first loaded.
class AddReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddReviewController());
  }
}

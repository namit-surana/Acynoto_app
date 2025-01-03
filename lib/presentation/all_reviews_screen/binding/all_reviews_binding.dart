import '../controller/all_reviews_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllReviewsScreen.
///
/// This class ensures that the AllReviewsController is created when the
/// AllReviewsScreen is first loaded.
class AllReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllReviewsController());
  }
}

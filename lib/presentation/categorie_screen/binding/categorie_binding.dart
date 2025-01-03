import '../controller/categorie_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategorieScreen.
///
/// This class ensures that the CategorieController is created when the
/// CategorieScreen is first loaded.
class CategorieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategorieController());
  }
}

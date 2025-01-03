import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/all_reviews_screen/models/all_reviews_model.dart';

/// A controller class for the AllReviewsScreen.
///
/// This class manages the state of the AllReviewsScreen, including the
/// current allReviewsModelObj
class AllReviewsController extends GetxController {
  Rx<AllReviewsModel> allReviewsModelObj = AllReviewsModel().obs;


  List<AllReviewItemsModel> categoryList = AllReviewsModel.getAllReviews();


}

import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/favorite1_page/models/favorite1_model.dart';/// A controller class for the Favorite1Page.
///
/// This class manages the state of the Favorite1Page, including the
/// current favorite1ModelObj
class Favorite1Controller extends GetxController {Favorite1Controller(this.favorite1ModelObj);

Rx<Favorite1Model> favorite1ModelObj;


List<FavouriteItemModel> categoryList = Favorite1Model.getCategories();

 }

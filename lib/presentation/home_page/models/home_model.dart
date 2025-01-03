import 'package:medi_app/presentation/home_page/models/slider_Item_Model.dart';
import '../../../core/app_export.dart';

class HomeModel {
  // Rx<List<UserprofilebannItemModel>> userprofilebannItemList =
  //     Rx(List.generate(1, (index) => UserprofilebannItemModel()));


  static List<SliderItemModel> slidercarItemList() {
   return [
    SliderItemModel(
        ImageConstant.imgSlider1st, "Find the best doctor\nin your vicinity"),
    SliderItemModel(
        ImageConstant.imgSlider2nd, "Find the best doctor\nin your vicinity"),
    SliderItemModel(
        ImageConstant.imgSlider3rd, "Find the best doctor\nin your vicinity"),
   ];
  }
}



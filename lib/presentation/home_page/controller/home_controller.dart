import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

import '../models/appointment_model.dart';
import '../models/slider_Item_Model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  Rx<int> sliderIndex = 0.obs;

  int currentPage = 0;


  List<SliderItemModel> slider = HomeModel.slidercarItemList();
  List<AppointmentItemModel> appointment = AppointmentModel.getAppointment();


  //
  // @override
  // void onClose() {
  //   super.onClose();
  //   searchController.dispose();
  // }
}

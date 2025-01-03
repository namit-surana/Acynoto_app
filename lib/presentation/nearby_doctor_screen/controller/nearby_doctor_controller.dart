import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/nearby_doctor_screen/models/nearby_doctor_model.dart';

/// A controller class for the NearbyDoctorScreen.
///
/// This class manages the state of the NearbyDoctorScreen, including the
/// current nearbyDoctorModelObj
class NearbyDoctorController extends GetxController {
  // Rx<NearbyDoctorModel> nearbyDoctorModelObj = NearbyDoctorModel().obs;

  List<NearByDoctorsItemModel> categoryList = NearbyDoctorModel.getNearByDoctors();


  void setFavProduct(data) {
    data.isFavourite = !data.isFavourite!;
    update();

  }

}

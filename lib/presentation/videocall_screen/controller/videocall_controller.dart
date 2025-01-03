import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/videocall_screen/models/videocall_model.dart';/// A controller class for the VideocallScreen.
///
/// This class manages the state of the VideocallScreen, including the
/// current videocallModelObj
class VideocallController extends GetxController {Rx<VideocallModel> videocallModelObj = VideocallModel().obs;

 }

import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/help_center_screen/models/help_center_model.dart';/// A controller class for the HelpCenterScreen.
///
/// This class manages the state of the HelpCenterScreen, including the
/// current helpCenterModelObj
class HelpCenterController extends GetxController {Rx<HelpCenterModel> helpCenterModelObj = HelpCenterModel().obs;

 }

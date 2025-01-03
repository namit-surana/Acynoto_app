import 'package:medi_app/core/app_export.dart';import 'package:medi_app/presentation/settings_screen/models/settings_model.dart';/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

onSelected(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList2.refresh(); } 
 }

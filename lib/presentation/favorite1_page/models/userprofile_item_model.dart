import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userName, this.userProfession, this.id, }) { userName = userName  ?? Rx("Dr. esther howard");userProfession = userProfession  ?? Rx("Cardiologists");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userProfession;

Rx<String>? id;

 }

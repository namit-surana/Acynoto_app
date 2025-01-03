import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userName, this.userDescription, this.id, }) { userName = userName  ?? Rx("Ralph Edwards");userDescription = userDescription  ?? Rx("Dr. esther edwards is the best doctor I've ever seen.\nhe is so knowledgeable and caring.");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userDescription;

Rx<String>? id;

 }

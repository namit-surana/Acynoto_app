import '../../../core/app_export.dart';/// This class is used in the [userpackage_item_widget] screen.
class UserpackageItemModel {UserpackageItemModel({this.massagingText, this.chatText, this.priceText, this.id, }) { massagingText = massagingText  ?? Rx("Massaging");chatText = chatText  ?? Rx("Chat with doctor");priceText = priceText  ?? Rx("25.00");id = id  ?? Rx(""); }

Rx<String>? massagingText;

Rx<String>? chatText;

Rx<String>? priceText;

Rx<String>? id;

 }

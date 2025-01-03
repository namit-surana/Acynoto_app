import '../../../core/app_export.dart';/// This class is used in the [paymentdetails_item_widget] screen.
class PaymentdetailsItemModel {PaymentdetailsItemModel({this.cashondelivery, this.id, }) { cashondelivery = cashondelivery  ?? Rx("Paypal");id = id  ?? Rx(""); }

Rx<String>? cashondelivery;

Rx<String>? id;

 }

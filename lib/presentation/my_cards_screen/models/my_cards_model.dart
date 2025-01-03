import '../../../core/app_export.dart';import 'paymentdetails_item_model.dart';/// This class defines the variables used in the [my_cards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCardsModel {Rx<List<PaymentdetailsItemModel>> paymentdetailsItemList = Rx(List.generate(4,(index) => PaymentdetailsItemModel()));

 }

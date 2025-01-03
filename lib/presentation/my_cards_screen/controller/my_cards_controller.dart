import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/my_cards_screen/models/my_cards_model.dart';

import '../../payment_method_screen/models/payment_method_model.dart';

/// A controller class for the MyCardsScreen.
///
/// This class manages the state of the MyCardsScreen, including the
/// current myCardsModelObj
class MyCardsController extends GetxController {
  Rx<MyCardsModel> myCardsModelObj = MyCardsModel().obs;

  List<PaymentModel> paymentList = PaymentMethodModel.getAllPaymentMethod();

}

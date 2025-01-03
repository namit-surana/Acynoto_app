import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/presentation/payment_method_screen/models/payment_method_model.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  List<PaymentModel> paymentList = PaymentMethodModel.getAllPaymentMethod();


  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> radioGroup2 = "".obs;

  Rx<String> radioGroup3 = "".obs;

  RxInt selected = 0.obs;
}

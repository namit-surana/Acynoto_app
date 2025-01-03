import '../../../core/utils/image_constant.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel {
  static List<PaymentModel> getAllPaymentMethod() {
    return [
      PaymentModel(ImageConstant.paypal, "Paypal"),
      PaymentModel(ImageConstant.visa, "Visa"),
      PaymentModel(ImageConstant.gPay, "Google pay"),
      PaymentModel(ImageConstant.apple, "Apple pay"),
    ];
  }
}

class PaymentModel {
  String? image;
  String? title;

  PaymentModel(
    this.image,
    this.title,
  );
}

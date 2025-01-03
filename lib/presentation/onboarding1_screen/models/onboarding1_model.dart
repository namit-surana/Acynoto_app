import '../../../core/app_export.dart';
import 'healthmanagemen_item_model.dart';

/// This class defines the variables used in the [onboarding1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Onboarding1Model {
  Rx<List<HealthmanagemenItemModel>> healthmanagemenItemList =
      Rx(List.generate(1, (index) => HealthmanagemenItemModel()));
}


class OnboardingModel {
  String title;
  String description;
  String image;

  OnboardingModel(
      this.title,
      this.description,
      this.image,
      );
}

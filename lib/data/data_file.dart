import '../core/utils/image_constant.dart';
import '../presentation/onboarding_screen/models/onboarding_model.dart';

class DataFile {
  static List<OnboardingModel> getAllIntroList() {
    List<OnboardingModel> list = [];
    list.add(
      OnboardingModel(
        "Make a friend, expand your connection!",
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id ",
          ImageConstant.onBoardOne,
      ),
    );
    list.add(
      OnboardingModel(
        "Enjoy the convenience of communicating easily.",
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id ",
          ImageConstant.onBoardTwo,
      ),
    );
    list.add(
      OnboardingModel(
        "Stay connect with your friend and family.",
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id ",
          ImageConstant.onBoardThree,
      ),
    );
    return list;
  }
}

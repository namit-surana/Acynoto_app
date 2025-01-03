
import 'package:get/get.dart';

import '../models/onboarding1_model.dart';

class OnboardingOneController extends GetxController {
 Rx<Onboarding1Model> onboardingOneModelObj = Onboarding1Model().obs;

 Rx<int> sliderIndex = 0.obs;

 RxInt selectedPos = 0.obs;

 changeIndex(int i) {
  selectedPos.value = i;
  update();
 }

 int currentPage = 0;

 void setCurrentPage(int value) {
  currentPage = value;
  update();
 }
}

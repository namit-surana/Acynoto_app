// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:medi_app/core/app_export.dart';
// import 'package:medi_app/widgets/custom_elevated_button.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../onboarding_screen/widgets/doctorprofile_item_widget.dart';
// import 'controller/onboarding_controller.dart';
// import 'models/doctorprofile_item_model.dart';
//
// class OnboardingScreen extends GetWidget<OnboardingController> {
//   const OnboardingScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: appTheme.blue5001,
//             body: SizedBox(
//                 width: double.maxFinite,
//                 child: Column(children: [
//                   CustomImageView(
//                       imagePath: ImageConstant.imgRectangle5458,
//                       height: 500.v,
//                       width: 428.h),
//                   Padding(
//                       padding:
//                           EdgeInsets.only(left: 32.h, top: 41.v, right: 37.h),
//                       child: Obx(() => CarouselSlider.builder(
//                           options: CarouselOptions(
//                               height: 140.v,
//                               initialPage: 0,
//                               autoPlay: true,
//                               viewportFraction: 1.0,
//                               enableInfiniteScroll: false,
//                               scrollDirection: Axis.horizontal,
//                               onPageChanged: (index, reason) {
//                                 controller.sliderIndex.value = index;
//                               }),
//                           itemCount: controller.onboardingModelObj.value
//                               .doctorprofileItemList.value.length,
//                           itemBuilder: (context, index, realIndex) {
//                             DoctorprofileItemModel model = controller
//                                 .onboardingModelObj
//                                 .value
//                                 .doctorprofileItemList
//                                 .value[index];
//                             return DoctorprofileItemWidget(model);
//                           }))),
//                   SizedBox(height: 21.v),
//                   Obx(() => SizedBox(
//                       height: 7.v,
//                       child: AnimatedSmoothIndicator(
//                           activeIndex: controller.sliderIndex.value,
//                           count: controller.onboardingModelObj.value
//                               .doctorprofileItemList.value.length,
//                           axisDirection: Axis.horizontal,
//                           effect: ScrollingDotsEffect(
//                               spacing: 6,
//                               activeDotColor: theme.colorScheme.primary,
//                               dotColor:
//                                   theme.colorScheme.primary.withOpacity(0.46),
//                               dotHeight: 7.v,
//                               dotWidth: 7.h)))),
//                   CustomElevatedButton(
//                       text: "lbl_next".tr,
//                       margin:
//                           EdgeInsets.only(left: 16.h, top: 32.v, right: 16.h),
//                       onTap: () {
//                         onTapNext();
//                       }),
//                   SizedBox(height: 19.v),
//                   GestureDetector(
//                       onTap: () {
//                         onTapTxtSkip();
//                       },
//                       child: Text("lbl_skip".tr,
//                           style: theme.textTheme.bodyLarge)),
//                   SizedBox(height: 5.v)
//                 ]))));
//   }
//
//   /// Navigates to the onboarding2Screen when the action is triggered.
//
//   /// When the action is triggered, this function uses the [Get] package to
//   /// push the named route for the onboarding2Screen.
//   onTapNext() {
//     Get.toNamed(
//       AppRoutes.onboarding2Screen,
//     );
//   }
//
//   /// Navigates to the onboarding1Screen when the action is triggered.
//
//   /// When the action is triggered, this function uses the [Get] package to
//   /// push the named route for the onboarding1Screen.
//   onTapTxtSkip() {
//     Get.toNamed(
//       AppRoutes.onboarding1Screen,
//     );
//   }
// }

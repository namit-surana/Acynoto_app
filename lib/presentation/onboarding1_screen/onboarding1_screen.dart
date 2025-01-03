import '../../data/data_file.dart';
import '../onboarding_screen/models/onboarding_model.dart';
import 'controller/onboarding1_controller.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    PageController pageController = PageController(initialPage: 0);

    final List<OnboardingModel> introList = DataFile.getAllIntroList();

    return WillPopScope(
      onWillPop: () async {
        backClick();
        return false;
      },
      child: Scaffold(
        body: GetBuilder<OnboardingOneController>(builder: (controller) {
          return Stack(
            children: [
              Container(
                child: PageView.builder(
                  onPageChanged: (value) {
                    controller.setCurrentPage(value);
                  },
                  controller: pageController,
                  itemBuilder: (context, index) {
                    OnboardingModel modelIntro = introList[index];
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(modelIntro.image),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 0, left: 33, right: 33, bottom: 180),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 388.h,
                              child: Text(
                                modelIntro.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineMedium!.copyWith(
                                  height: 1.36,
                                ),
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Text(
                              modelIntro.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: introList.length,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      introList.length,
                      (index) {
                        return AnimatedContainer(
                          margin: EdgeInsets.only(left: 4.h, right: 4.h),
                          duration: const Duration(milliseconds: 300),
                          height: 8.v,
                          width: (index == controller.currentPage) ? 16.h : 8.h,
                          decoration: BoxDecoration(
                              // shape: BoxShape.circle,

                              borderRadius: BorderRadius.circular(16.h),
                              color: (index == controller.currentPage)
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.primary
                                      .withOpacity(0.14)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.v),
                    child: CustomElevatedButton(
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      text: (controller.currentPage == introList.length - 1)
                          ? "Get started"
                          : "Next",
                      onTap: controller.currentPage == introList.length - 1
                          ? () {
                              PrefUtils.setIntro(false);
                              Get.toNamed(
                                AppRoutes.logInScreen,
                              );
                            }
                          : () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.bounceIn);
                            },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  InkWell(
                    onTap: () {
                      PrefUtils.setIntro(false);
                      Get.toNamed(
                        AppRoutes.logInScreen,
                      );
                    },
                    child: Text(
                      (controller.currentPage == introList.length - 1)
                          ? " "
                          : "Skip",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 40.v),
                ],
              )
            ],
          );
        }),
      ),
    );
  }

  backClick() {
    Constant.closeApp();
  }
}

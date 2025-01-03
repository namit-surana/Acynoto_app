import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../avaliable_doctors_screen/controller/avaliable_doctors_controller.dart';
import '../avaliable_doctors_screen/models/avaliable_doctors_model.dart';
import '../categorie_screen/controller/categorie_controller.dart';
import '../categorie_screen/models/categoriescolum_item_model.dart';
import '../nearby_doctor_screen/controller/nearby_doctor_controller.dart';
import '../nearby_doctor_screen/models/nearby_doctor_model.dart';
import 'controller/home_controller.dart';
import 'models/appointment_model.dart';
import 'models/home_model.dart';
import 'models/slider_Item_Model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medi_app/core/app_export.dart';
import 'package:medi_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:medi_app/widgets/app_bar/appbar_title.dart';
import 'package:medi_app/widgets/app_bar/custom_app_bar.dart';
import 'package:medi_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 92.v,
            title: AppbarTitle(
                text: "msg_hello_ronald_richards".tr,
                margin: EdgeInsets.only(left: 16.h),

            ),

            actions: [
              AppbarIconbutton(
                svgPath: ImageConstant.imgLock,
                onTap: () {
                  Constant.sendToNextScreen(
                      context, AppRoutes.notificationsScreen);
                },
                margin: EdgeInsets.fromLTRB(0.h, 0.v, 16.h, 0.v),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            child: CustomTextFormField(
              controller: controller.searchController,
              hintText: "Search...",
              autofocus: false,
              filled: true,
              readOnly: true,
              onTap: () {
                Get.toNamed(
                  AppRoutes.searchScreen,
                );
              },
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              borderSide: BorderSide.none,
              prefix: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 12.0),
                child: CustomImageView(svgPath: ImageConstant.search),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Expanded(
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  child: CarouselSlider.builder(
                    itemCount: controller.slider.length,
                    itemBuilder: (context, index, realIndex) {
                      SliderItemModel data = controller.slider[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          height: 150.v,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(data.image!),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 174,
                                  child: Text(
                                    data.title!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Book Now".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumErrorContainer,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.arrowRight,
                                      color: appTheme.black900,
                                      height: 20,
                                      width: 20,
                                      margin: EdgeInsets.only(
                                        left: 5,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          controller.sliderIndex.value = index;
                          controller.update();
                        },
                        height: 150.v,
                        autoPlay: true,
                        scrollDirection: Axis.horizontal,
                        initialPage: 1,
                        viewportFraction: 0.8),
                  ),
                ),
                SizedBox(height: 16.v),
                // Align(
                //   alignment: Alignment.center,
                //   child: Obx(
                //     () => SizedBox(
                //       child: AnimatedSmoothIndicator(
                //         activeIndex: controller.sliderIndex.value,
                //         count: controller.slider.length,
                //         axisDirection: Axis.horizontal,
                //         effect: ScrollingDotsEffect(
                //           spacing: 6,
                //           activeDotColor: appTheme.black900,
                //           dotColor: appTheme.black900.withOpacity(0.46),
                //           dotHeight: 7.v,
                //           dotWidth: (controller.sliderIndex.value == 0)
                //               ? 16.h
                //               : 7.h,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.slider.length,
                      (index) {
                        return AnimatedContainer(
                          margin: EdgeInsets.only(left: 4.h, right: 4.h),
                          duration: const Duration(milliseconds: 300),
                          height: 8.v,
                          width: (index == controller.sliderIndex.value)
                              ? 16.h
                              : 8.h,
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,

                            borderRadius: BorderRadius.circular(16.h),
                            color: (index == controller.sliderIndex.value)
                                ? appTheme.black900
                                : appTheme.black900.withOpacity(0.46),
                          ),
                        );
                      },
                    ),
                  );
                }),
                Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Log a Symptom".tr,
                          style: theme.textTheme.titleMedium),
                      GestureDetector(
                        onTap: () {
                          onTapTxtViewall();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: Text(
                            "lbl_view_all".tr,
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GetBuilder<CategorieController>(
                  init: CategorieController(),
                  builder: (categoriesController) => GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: categoriesController.categoryList.length > 4
                        ? 4
                        : categoriesController.categoryList.length,
                    padding: EdgeInsets.only(
                        top: 16, bottom: 16, left: 16, right: 16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 96,
                      crossAxisCount: 4,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      CategorieModel model =
                          categoriesController.categoryList[index];
                      return GestureDetector(
                        onTap: () {
                          onTapDoctordetails.call();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: model.color,
                            borderRadius: BorderRadius.circular(12.h),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: model.image,
                                height: 48.v,
                                width: 48.v,
                              ),
                              SizedBox(
                                height: 10.v,
                              ),
                              Text(
                                model.title!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium!.copyWith(
                                    fontSize: 12.fSize,
                                    fontWeight: FontWeight. w700),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                        EdgeInsets.only(left: 16.h, top: 10.v, bottom: 16.v),
                        child: Text("lbl_appointment".tr,
                            style: theme.textTheme.titleMedium),
                      ),
                    ),
                    SizedBox(
                      height: 170.v,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.appointmentDetailsScreen,
                          );
                        },
                        child: ListView.separated(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: controller.appointment.length,
                          itemBuilder: (context, index) {
                            AppointmentItemModel model =
                            controller.appointment[index];

                            return Container(
                              height: 152.v,
                              width: 352.h,
                              padding: EdgeInsets.symmetric(vertical: 16.v),
                              margin: EdgeInsets.only(bottom: 10.v, top: 5.v),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                            imagePath: model.image,
                                            height: 56.adaptSize,
                                            width: 56.adaptSize,
                                            radius: BorderRadius.circular(12.h)),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 16.h, top: 2.v),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(model.name!,
                                                  style:
                                                  theme.textTheme.titleMedium),
                                              SizedBox(height: 12.v),
                                              Text(model.profession!,
                                                  style: CustomTextStyles
                                                      .bodyMedium14),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16.v),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 0.v),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text("Purpose of Visit".tr,
                                                  style: theme.textTheme.bodySmall),
                                              SizedBox(height: 7.v),
                                              Text(
                                                "Blood Test".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: SizedBox(
                                            height: 43.v,
                                            child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              endIndent: 1.h,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h, bottom: 0.v),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_schedule".tr,
                                                  style: theme.textTheme.bodySmall),
                                              SizedBox(height: 10.v),
                                              Text("msg_31_august_11_00".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack900)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 16.h),
                        ),
                      ),
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Book Consultation".tr,
                          style: theme.textTheme.titleMedium),
                      GestureDetector(
                        onTap: () {
                          onTapTxtViewallone();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: Text("lbl_view_all".tr,
                              style: CustomTextStyles.bodyMediumBlack900),
                        ),
                      ),
                    ],
                  ),
                ),
                GetBuilder<NearbyDoctorController>(
                  init: NearbyDoctorController(),
                  builder: (topPicksForYouController) => GridView.builder(
                    padding: EdgeInsets.only(
                        top: 16, bottom: 0, right: 16, left: 16),
                    itemCount: topPicksForYouController.categoryList.length < 2
                        ? topPicksForYouController.categoryList.length
                        : 2,
                    primary: false,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 212.v,
                        crossAxisCount:
                            topPicksForYouController.categoryList.length < 2
                                ? topPicksForYouController.categoryList.length
                                : 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16),
                    itemBuilder: (context, index) {
                      NearByDoctorsItemModel data =
                          topPicksForYouController.categoryList[index];
                      return GestureDetector(
                        onTap: () {
                          onTapDoctordetails.call();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: data.image,
                                    height: 110.v,
                                    width: 174.h,
                                    radius: BorderRadius.circular(
                                      12.h,
                                    ),
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      topPicksForYouController
                                          .setFavProduct(data);
                                    },
                                    child: CustomIconButton(
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 8.v,
                                        right: 8.h,
                                      ),
                                      padding: EdgeInsets.all(4.h),
                                      alignment: Alignment.topRight,
                                      child: CustomImageView(
                                        svgPath: data.isFavourite!
                                            ? ImageConstant.imgFavoriteSelect
                                            : ImageConstant.imgFavoriteUnselect,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                data.name!,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                data.profession!,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium14,
                              ),
                              SizedBox(height: 8.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      data.rate!,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      data.reviews!,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Padding(
                //   padding: EdgeInsets.only(
                //       left: 16.h, top: 18.v, right: 16.h, bottom: 16.v),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text("msg_available_doctors".tr,
                //           style: theme.textTheme.titleMedium),
                //       GestureDetector(
                //           onTap: () {
                //             onTapTxtViewalltwo();
                //           },
                //           child: Padding(
                //               padding: EdgeInsets.symmetric(vertical: 2.v),
                //               child: Text("lbl_view_all".tr,
                //                   style: CustomTextStyles.bodyMediumBlack900)))
                //     ],
                //   ),
                // ),
                // GetBuilder<AvaliableDoctorsController>(
                //     init: AvaliableDoctorsController(),
                //     builder: (controller) {
                //       return SizedBox(
                //         height: 140.v,
                //         child: GestureDetector(
                //           onTap: () {},
                //           child: ListView.separated(
                //             primary: false,
                //             shrinkWrap: true,
                //             scrollDirection: Axis.horizontal,
                //             padding: EdgeInsets.symmetric(horizontal: 20.h),
                //             physics: AlwaysScrollableScrollPhysics(),
                //             itemCount: controller.categoryList.length > 2
                //                 ? 2
                //                 : controller.categoryList.length,
                //             itemBuilder: (context, index) {
                //               AvailableDoctorsItemModel model =
                //                   controller.categoryList[index];
                //
                //               return Container(
                //                 width: 352.h,
                //                 padding: EdgeInsets.symmetric(
                //                     vertical: 8.v, horizontal: 8.h),
                //                 margin: EdgeInsets.only(bottom: 10.v, top: 5.v),
                //                 decoration: AppDecoration.outlineBlack.copyWith(
                //                   borderRadius:
                //                       BorderRadiusStyle.roundedBorder12,
                //                 ),
                //                 child: Row(
                //                   children: [
                //                     CustomImageView(
                //                       imagePath: model.image,
                //                       height: 94.adaptSize,
                //                       width: 94.adaptSize,
                //                       radius: BorderRadius.circular(
                //                         12.h,
                //                       ),
                //                     ),
                //                     SizedBox(width: 16.h),
                //                     Expanded(
                //                       child: Column(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         children: [
                //                           Row(
                //                             mainAxisAlignment:
                //                                 MainAxisAlignment.start,
                //                             crossAxisAlignment:
                //                                 CrossAxisAlignment.start,
                //                             children: [
                //                               Expanded(
                //                                 child: Column(
                //                                   crossAxisAlignment:
                //                                       CrossAxisAlignment.start,
                //                                   children: [
                //                                     Text(
                //                                       model.name!,
                //                                       overflow:
                //                                           TextOverflow.ellipsis,
                //                                       style: theme.textTheme
                //                                           .titleMedium,
                //                                     ),
                //                                     SizedBox(height: 13.v),
                //                                     Text(
                //                                       model.profession!,
                //                                       overflow:
                //                                           TextOverflow.ellipsis,
                //                                       style: CustomTextStyles
                //                                           .bodyMedium14,
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                               GestureDetector(
                //                                 onTap: () {
                //                                   controller
                //                                       .setFavProduct(model);
                //                                 },
                //                                 child: CustomIconButton(
                //                                   height: 28.adaptSize,
                //                                   width: 28.adaptSize,
                //                                   margin: EdgeInsets.only(
                //                                       bottom: 34.v),
                //                                   padding: EdgeInsets.all(6.h),
                //                                   decoration:
                //                                       IconButtonStyleHelper
                //                                           .fillGrayTL14,
                //                                   child: CustomImageView(
                //                                     svgPath: model.isFavourite!
                //                                         ? ImageConstant
                //                                             .imgFavoriteSelect
                //                                         : ImageConstant
                //                                             .imgFavoriteUnselect,
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                           Row(
                //                             mainAxisAlignment:
                //                                 MainAxisAlignment.start,
                //                             crossAxisAlignment:
                //                                 CrossAxisAlignment.center,
                //                             children: [
                //                               CustomImageView(
                //                                 svgPath: ImageConstant
                //                                     .imgStarAmber50001,
                //                                 height: 15.v,
                //                                 width: 15.h,
                //                                 margin:
                //                                     EdgeInsets.only(bottom: 1),
                //                               ),
                //                               SizedBox(width: 3.h),
                //                               Text(
                //                                 model.rate!,
                //                                 style:
                //                                     theme.textTheme.bodySmall,
                //                               ),
                //                               SizedBox(width: 4.h),
                //                               Expanded(
                //                                 child: Text(
                //                                   model.reviews!,
                //                                   style:
                //                                       theme.textTheme.bodySmall,
                //                                 ),
                //                               ),
                //                               CustomOutlinedButton(
                //                                 width: 100.h,
                //                                 text: "lbl_book_now".tr,
                //                               ),
                //                             ],
                //                           ),
                //                         ],
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               );
                //             },
                //             separatorBuilder: (context, index) =>
                //                 SizedBox(width: 16.h),
                //           ),
                //         ),
                //       );
                //     }),
                SizedBox(height: 25.v),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categorieScreen,
    );
  }

  onTapDoctordetails1() {
    Get.toNamed(
      AppRoutes.appointmentDetailsScreen,
    );
  }
  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.nearbyDoctorScreen,
    );
  }

  onTapDoctordetails() {
    Get.toNamed(
      AppRoutes.doctorDetailsScreen,
    );
  }


  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.avaliableDoctorsScreen,
    );
  }
}

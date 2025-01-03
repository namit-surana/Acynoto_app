// import '../controller/onboarding_controller.dart';
// import '../models/doctorprofile_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:medi_app/core/app_export.dart';
//
// // ignore: must_be_immutable
// class DoctorprofileItemWidget extends StatelessWidget {
//   DoctorprofileItemWidget(
//     this.doctorprofileItemModelObj, {
//     Key? key,
//   }) : super(
//           key: key,
//         );
//
//   DoctorprofileItemModel doctorprofileItemModelObj;
//
//   var controller = Get.find<OnboardingController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//             left: 26.h,
//             right: 21.h,
//           ),
//           child: Text(
//             "msg_experienced_doctor".tr,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//             style: theme.textTheme.headlineMedium!.copyWith(
//               height: 1.36,
//             ),
//           ),
//         ),
//         SizedBox(height: 16.v),
//         Text(
//           "msg_manage_your_medications".tr,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           textAlign: TextAlign.center,
//           style: theme.textTheme.bodyLarge!.copyWith(
//             height: 1.50,
//           ),
//         ),
//       ],
//     );
//   }
// }

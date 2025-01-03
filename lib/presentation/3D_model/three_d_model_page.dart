// import 'package:flutter/material.dart';
// import 'package:o3d/o3d.dart';
//
// class ThreeDModelPage extends StatefulWidget {
//   const ThreeDModelPage({super.key});
//
//   @override
//   State<ThreeDModelPage> createState() => _ThreeDModelPageState();
// }
//
// class _ThreeDModelPageState extends State<ThreeDModelPage> {
//   O3DController controller = O3DController();
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _simulateLoading();
//   }
//
//   void _simulateLoading() async {
//     await Future.delayed(const Duration(seconds: 5));
//     setState(() {
//       isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Tell Us "),
//       ),
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           O3D(
//             controller: controller,
//             cameraControls: false,
//             src: "https://models.readyplayer.me/67761f73b827749ede0a2c70.glb",
//           ),
//           if (isLoading)
//             const Center(
//               child: CircularProgressIndicator(),
//             ),
//           SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     FloatingActionButton(
//                       onPressed: () {
//                         setState(() {
//                           isLoading = true;
//                         });
//                         // Simulate loading for button action
//                         Future.delayed(const Duration(seconds: 15), () {
//                           setState(() {
//                             controller.cameraControls = true;
//                             isLoading = false;
//                           });
//                         });
//                       },
//                       child: isLoading
//                           ? const CircularProgressIndicator(
//                         color: Colors.white,
//                       )
//                           : const Icon(Icons.threed_rotation),
//                     ),
//                     const SizedBox(width: 10),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

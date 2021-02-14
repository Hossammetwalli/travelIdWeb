// import 'package:flutter/material.dart';
// import 'package:webapptrial/const/colors.dart';
// import 'package:webapptrial/const/const_string.dart';
// import 'package:webapptrial/const/text_style.dart';
// import 'package:webapptrial/screens/users/bottom_about_us.dart';
// import 'package:webapptrial/screens/users/bottom_message.dart';
//
// class BottomSmallScreen extends StatelessWidget {
//
//   final double height;
//   final double width;
//
//   const BottomSmallScreen({Key key, this.height, this.width}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(30),
//       color: AppColors.purpleColor,
//       height: height * 1.2,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10),
//               child: Column(
//                 children: [
//                   MessageWidget(width: width, height: height, ),
//
//                   const  SizedBox(
//                     height: 20,
//                   ),
//                   AboutUs(width: width, height: height),
//
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.blueGrey,
//                 width: double.maxFinite,
//                 height: 2,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Copyright © 2021 | eknon Tech OÜ',
//               style: TextStyle(
//                 color: AppColors.whiteColor,
//                 fontSize: 14,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }

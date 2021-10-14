// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:webapptrial/widgets/export_widget.dart';
//
// class BusinessLandingPageLarge extends StatelessWidget {
//   const BusinessLandingPageLarge({
//     Key key,
//     @required this.screenSize,
//   }) : super(key: key);
//
//   final Size screenSize;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         /// Main title
//
//         ///Contactless experience///One click booking
//         Positioned(
//           top: 820,
//           left: screenSize.width / 2 - (screenSize.width * .3),
//           child: Row(
//             children: [
//               ///Contactless experience
//               ClipPath(
//                 clipper: HexagonalClipper(reverse: false),
//                 child: Container(
//                   width: screenSize.width * .3,
//                   height: 200,
//                   decoration: BoxDecoration(color: AppColors.lightGreyColorE5
//                       // gradient: AppColors.pinkGradientTwo,
//                       ),
//                   padding: const EdgeInsets.all(40),
//
//                   //color: AppColors.lightBlueColor,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         BusinessConstString.businessValueOne,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         BusinessConstString.businessValueOneDesc,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               ///One click booking
//               ClipPath(
//                 clipper: HexagonalClipper(reverse: false),
//                 child: Container(
//                   width: screenSize.width * .3,
//                   height: 200,
//                   padding: const EdgeInsets.all(40),
//                   decoration: BoxDecoration(
//                       //gradient: AppColors.pinkGradientTwoReverse,
//                       color: AppColors.lightGreyColorE5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         BusinessConstString.businessValueFour,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         BusinessConstString.businessValueFourDesc,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         ///"Data Accuracy" ///Tailor Personalized
//         Positioned(
//           top: 1120,
//           left: screenSize.width / 2 - (screenSize.width * .3),
//           child: Row(
//             children: [
//               ///"Data Accuracy"
//               ClipPath(
//                 clipper: HexagonalClipper(
//                   reverse: false,
//                 ),
//                 child: Container(
//                   width: screenSize.width * .3,
//                   height: 200,
//                   padding: const EdgeInsets.all(40),
//                   decoration: BoxDecoration(
//                       // gradient: AppColors.pinkGradientTwoReverse,
//                       color: AppColors.lightGreyColorE5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         BusinessConstString.businessValueThree,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         BusinessConstString.businessValueThreeDesc,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               ///Tailor Personalized
//               ClipPath(
//                 clipper: HexagonalClipper(reverse: false),
//                 child: Container(
//                   width: screenSize.width * .3,
//                   height: 200,
//                   padding: const EdgeInsets.all(40),
//                   decoration: BoxDecoration(
//                       // gradient: AppColors.pinkGradientTwo,
//                       color: AppColors.lightGreyColorE5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         BusinessConstString.businessValueSix,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         BusinessConstString.businessValueSixDesc,
//                         style: AppTextStyles.textSemiboldSecBlack18,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         /// Customer Engagement
//         Positioned(
//           top: 920,
//           left: screenSize.width / 2 - (screenSize.width * .4),
//           child: ClipPath(
//             clipper: HexagonalClipper(reverse: true),
//             child: Container(
//               width: screenSize.width * .2,
//               height: 300,
//               padding: const EdgeInsets.all(40),
//               decoration: BoxDecoration(
//                   // gradient: AppColors.pinkGradientTwo,
//                   color: AppColors.lightGreyColorE5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     BusinessConstString.businessValueTwo,
//                     style: AppTextStyles.textSemiboldSecBlack18,
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     BusinessConstString.businessValueTwoDesc,
//                     style: AppTextStyles.textSemiboldSecBlack18,
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//         ///Drive direct booking
//         Positioned(
//           top: 920,
//           right: screenSize.width / 2 - (screenSize.width * .4),
//           child: ClipPath(
//             clipper: HexagonalClipper(reverse: true),
//             child: Container(
//               width: screenSize.width * .2,
//               height: 300,
//               padding: const EdgeInsets.all(30),
//               decoration: BoxDecoration(
//                   // gradient: AppColors.pinkGradientTwo
//                   color: AppColors.lightGreyColorE5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     BusinessConstString.businessValueFive,
//                     style: AppTextStyles.textSemiboldSecBlack18,
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     BusinessConstString.businessValueFiveDesc,
//                     style: AppTextStyles.textSemiboldSecBlack18,
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//         /// Free Trial
//         ///
//         Positioned(
//           top: 600,
//
//           // left: screenSize.width /3,
//
//           child: Container(
//             width: screenSize.width,
//             height: 50,
//             child: Center(
//               child: Text(
//                 "Start your 30-days free trial",
//                 style: AppTextStyles.textSemiboldSecBlack18,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

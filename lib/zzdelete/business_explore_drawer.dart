// import 'package:flutter/material.dart';
// import 'package:webapptrial/widgets/export_widget.dart';
//
// class BusinessExploreDrawer extends StatefulWidget {
//   @override
//   _BusinessExploreDrawerState createState() => _BusinessExploreDrawerState();
// }
//
// class _BusinessExploreDrawerState extends State<BusinessExploreDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: AppColors.primaryWhite,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               FlatButton(
//                 color: AppColors.primaryBlack00,
//                 hoverColor: AppColors.primaryGreenB1,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                   );
//                 },
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                     top: 15.0,
//                     bottom: 15.0,
//                   ),
//                   child: Text(
//                     "Test",
//                     style: AppTextStyles.textRegularWhite12,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

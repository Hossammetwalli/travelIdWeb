// import 'package:auto_size_text/auto_size_text.dart';
//
// import 'package:flutter/material.dart';
// import 'package:webapptrial/widgets/export_widget.dart';
//
// class CoreText {
//   String text, image;
//
//   CoreText(this.text, this.image);
// }
//
// List<CoreText> serviceName =
//     carouselsData.map((item) => CoreText(item['text'], item['image'])).toList();
//
// var carouselsData = [
//   {"text": "Researching & Planning", "image": ConstString.planningImage},
//   {"text": "Flights & Airlines", "image": ConstString.flightImage},
//   {"text": "Holiday Packages", "image": ConstString.packages},
//   {"text": "Concierge Services", "image": ConstString.conciergeImage},
//   {"text": "Lodging & Hotels", "image": ConstString.hotelImage},
//   {"text": "Luxury Services", "image": ConstString.luxuryImage},
//   {"text": "Problems Solving", "image": ConstString.problemSolvingImage},
//   {"text": "Camping & Activities", "image": ConstString.activitiesImage},
//   {"text": "Corporate & Business", "image": ConstString.corporateImage},
//   {"text": "Groups & Mice", "image": ConstString.groupsImage},
//   {"text": "Parties & Events", "image": ConstString.eventsImage},
//   {"text": "Family services", "image": ConstString.familyServicesImage},
//   {"text": "Personal Shopping", "image": ConstString.shoppingImage},
//   {"text": "Food & Beverage", "image": ConstString.foodImage},
//   {"text": "Local Transportation", "image": ConstString.driverImage},
//   {"text": "Housekeeping", "image": ConstString.houseKeepingImage},
//   {"text": "Hourly jobs", "image": ConstString.hourlyJobsImage},
//   {"text": "Virtual travel services", "image": ConstString.virtualImage},
//   {"text": "Remote Work", "image": ConstString.remoteImage},
//   {"text": "Other", "image": ConstString.othersImage},
// ];
//
// class MultipleItemDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (ResponsiveWidget.isLargeScreen(context))
//         ? Container(
//             // width: MediaQuery.of(context).size.width,
//             // height: 500,
//
//             //  color: AppColors.lightGreyColorF7,
//             child: CarouselSlider.builder(
//             options: CarouselOptions(
//                 height: 450,
//                 reverse: true,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 viewportFraction: 1,
//                 pauseAutoPlayOnTouch: true),
//             itemCount: 5,
//             itemBuilder: (context, index, realIdx) {
//               final int first = index * 4;
//               final int second = first + 1;
//               final int third = first + 2;
//               final int fourth = first + 3;
//
//               return Padding(
//                 padding: const EdgeInsets.only(left: 50, right: 50),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [first, second, third, fourth].map((idx) {
//                         return Expanded(
//                           flex: 1,
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 4,
//                             height: 50,
//                             alignment: Alignment.center,
//                             child: AutoSizeText(
//                               serviceName[idx].text,
//                               style: AppTextStyles.mainTitleRegularBlue10,
//                               minFontSize: 15,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [first, second, third, fourth].map((idx) {
//                         return Expanded(
//                           flex: 1,
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 4,
//                             height: 300,
//                             margin: EdgeInsets.symmetric(horizontal: 10),
//                             child: Image.network(serviceName[idx].image,
//                                 scale: .7, fit: BoxFit.cover),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ))
//         //Small Screen
//         : Container(
//             width: MediaQuery.of(context).size.width,
//             height: 500,
//             // color: AppColors.lightGreyColorF7,
//             child: CarouselSlider.builder(
//               options: CarouselOptions(
//                 // aspectRatio: 1.0,
//                 height: 450,
//                 enlargeCenterPage: true,
//                 viewportFraction: 1,
//                 autoPlayAnimationDuration: const Duration(milliseconds: 500),
//                 // autoPlayInterval: const Duration(milliseconds: 200),
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 autoPlay: true,
//               ),
//               itemCount: 10,
//               itemBuilder: (context, index, realIdx) {
//                 final int first = index * 2;
//                 final int second = first + 1;
//                 // final int third = first + 2;
//                 // final int fourth = first + 3;
//
//                 return Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         first,
//                         second,
//                       ].map((idx) {
//                         return Expanded(
//                           flex: 1,
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 2,
//                             height: 50,
//                             alignment: Alignment.center,
//                             child: AutoSizeText(
//                               serviceName[idx].text,
//                               style: AppTextStyles.mainTitleRegularBlue10,
//                               minFontSize: 15,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         first,
//                         second,
//                       ].map((idx) {
//                         return Expanded(
//                           flex: 1,
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 2,
//                             height: 300,
//                             margin: EdgeInsets.symmetric(horizontal: 10),
//                             child: Image.network(serviceName[idx].image,
//                                 scale: .7, fit: BoxFit.cover),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 );
//               },
//             ));
//   }
// }

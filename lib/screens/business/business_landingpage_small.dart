import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/admin/admin_request_access.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string_business.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class BusinessLandingPageSmall extends StatelessWidget {
  const BusinessLandingPageSmall({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: 2000,
        ),

        /// Main title
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.mainPageGradient.scale(1),
            ),
            width: screenSize.width,
            height: 1100,
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 750,
                  height: 200,
                  child: Text(
                    BusinessConstString.businessColumnTwo,
                    style: AppTextStyles.businessMainTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 900,
                  height: 160,
                  child: Text(
                      BusinessConstString.businessCoreValue.toUpperCase(),
                      style: AppTextStyles.businessSubTitleBlack,
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ),

        Positioned(
            top: 580,
            child: Container(
              width: screenSize.width,
              height: 370,
              color: AppColors.whiteColor,
            )),

        /// Core values

        ///Contactless experience///One click booking
        Positioned(
          top: 1150,
          left: 20,
          child: Row(
            children: [
              ///Contactless experience
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .45,
                  height: 250,
                  decoration: BoxDecoration(
                      color: AppColors.lightPurpleColor.withOpacity(0.5)
                      // gradient: AppColors.pinkGradientTwo,
                      ),
                  padding: const EdgeInsets.all(40),

                  //color: AppColors.lightBlueColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueOne,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        BusinessConstString.businessValueOneDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              ///One click booking
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .45,
                  height: 250,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      //gradient: AppColors.pinkGradientTwoReverse,
                      color: AppColors.lightPurpleColor.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueFour,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        BusinessConstString.businessValueFourDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        /// Customer Engagement ///Drive direct booking
        Positioned(
          top: 1400,
          left: 20,
          child: Row(
            children: [
              /// Customer Engagement
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .45,
                  height: 270,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwo,
                      color: AppColors.lightPurpleColor.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueTwo,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        BusinessConstString.businessValueTwoDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              ///Drive direct booking
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .45,
                  height: 270,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwo
                      color: AppColors.lightPurpleColor.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueFive,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        BusinessConstString.businessValueFiveDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        ///"Data Accuracy" ///Tailor Personalized
        Positioned(
          top: 1670,
          left: 20,
          child: Row(
            children: [
              ///"Data Accuracy"
              ClipPath(
                clipper: HexagonalClipper(
                  reverse: false,
                ),
                child: Container(
                  width: screenSize.width * .45,
                  height: 250,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwoReverse,
                      color: AppColors.lightPurpleColor.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueThree,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        BusinessConstString.businessValueThreeDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              ///Tailor Personalized
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .45,
                  height: 250,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwo,
                      color: AppColors.lightPurpleColor.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BusinessConstString.businessValueSix,
                        style: AppTextStyles.businessSubtitleNavy,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        BusinessConstString.businessValueSixDesc,
                        style: AppTextStyles.businessContentNavy,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        /// Free Trial
        ///
        Positioned(
          top: 580,

          // left: screenSize.width /3,

          child: Container(
            width: screenSize.width,
            height: 50,
            child: Center(
              child: Text(
                "Start your 30-days free trial",
                style: AppTextStyles.businessSubTitleBlack,
              ),
            ),
          ),
        ),

        /// Business listing button
        Positioned(
          top: 630,
          left: (screenSize.width / 2) - 150,
          // left: screenSize.width /3,

          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: AppColors.lightPurpleColor,
                borderRadius: BorderRadius.circular(40)),
            child: TextButton(
              style: TextButton.styleFrom(primary: AppColors.navyColor),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AdminRequestAccess(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Get Business Access",
                  style: AppTextStyles.businessSubtitleWhite,
                ),
              ),
            ),
          ),
        ),

        /// image reception
        Positioned(
          top: 680,
          left: 0,
          child: Image.network(
            BusinessConstString.reception,
            scale: ResponsiveWidget.isSmallScreen(context) ? 2 : 1.7,
          ),
        ),

        /// image Traveler
        Positioned(
          top: 750,
          right: 0,
          child: Image.network(
            BusinessConstString.travelers,
            scale: 1,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/admin/admin_request_access.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string_business.dart';
import 'package:webapptrial/const/text_style.dart';

class BusinessLandingPageLarge extends StatelessWidget {
  const BusinessLandingPageLarge({
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
          height: 1500,
        ),

        /// Main title
        ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.mainPageGradient.scale(1),
            ),
            width: screenSize.width,
            height: 900,
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 750,
                  height: 130,
                  child: Text(
                    BusinessConstString.businessColumnTwo,
                    style: AppTextStyles.businessMainTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 900,
                  height: 130,
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
            top: 450,
            child: Container(
              width: screenSize.width,
              height: 280,
              color: AppColors.whiteColor,
            )),

        Positioned(
            top: 920,
            left: screenSize.width / 5,
            child: Container(
              width: screenSize.width * .6,
              height: 300,
              color: AppColors.lightPurpleColor,
              child: Center(
                child: Text(
                  BusinessConstString.frictionlessTravelExperience
                      .toUpperCase(),
                  style: AppTextStyles.subTitleWhite,
                ),
              ),
            )),

        /// Core values

        ///Contactless experience///One click booking
        Positioned(
          top: 820,
          left: screenSize.width / 2 - (screenSize.width * .3),
          child: Row(
            children: [
              ///Contactless experience
              ClipPath(
                clipper: HexagonalClipper(reverse: false),
                child: Container(
                  width: screenSize.width * .3,
                  height: 200,
                  decoration: BoxDecoration(color: AppColors.lightYellowColor
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
                  width: screenSize.width * .3,
                  height: 200,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      //gradient: AppColors.pinkGradientTwoReverse,
                      color: AppColors.lightYellowColor),
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

        ///"Data Accuracy" ///Tailor Personalized
        Positioned(
          top: 1120,
          left: screenSize.width / 2 - (screenSize.width * .3),
          child: Row(
            children: [
              ///"Data Accuracy"
              ClipPath(
                clipper: HexagonalClipper(
                  reverse: false,
                ),
                child: Container(
                  width: screenSize.width * .3,
                  height: 200,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwoReverse,
                      color: AppColors.lightYellowColor),
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
                  width: screenSize.width * .3,
                  height: 200,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      // gradient: AppColors.pinkGradientTwo,
                      color: AppColors.lightYellowColor),
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

        /// Customer Engagement
        Positioned(
          top: 920,
          left: screenSize.width / 2 - (screenSize.width * .4),
          child: ClipPath(
            clipper: HexagonalClipper(reverse: true),
            child: Container(
              width: screenSize.width * .2,
              height: 300,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                  // gradient: AppColors.pinkGradientTwo,
                  color: AppColors.lightYellowColor),
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
        ),

        ///Drive direct booking
        Positioned(
          top: 920,
          right: screenSize.width / 2 - (screenSize.width * .4),
          child: ClipPath(
            clipper: HexagonalClipper(reverse: true),
            child: Container(
              width: screenSize.width * .2,
              height: 300,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                  // gradient: AppColors.pinkGradientTwo
                  color: AppColors.lightYellowColor),
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
        ),

        /// Free Trial
        ///
        Positioned(
          top: 600,

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
          top: 660,
          left: (screenSize.width / 2) - 150,
          // left: screenSize.width /3,

          child: Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.lightPurpleColor,
                onPrimary: AppColors.navyColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AdminRequestAccess(),
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AdminRequestAccess()),
                // );
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

        /// image Traveler
        Positioned(
          top: 420,
          right: 0,
          child: Image.network(
            BusinessConstString.travelers,
            scale: 1,
          ),
        ),

        /// image reception
        Positioned(
          top: 440,
          left: 0,
          child: Image.network(
            BusinessConstString.reception,
            scale: .9,
          ),
        )
      ],
    );
  }
}

// Positioned(
//     top: 400,
//     left: (screenSize.width/2)-250,
//
//     child: Image.network(BusinessConstString.makeItBetter, scale: 0.8,)
// ),

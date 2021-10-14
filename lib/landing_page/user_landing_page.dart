import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class LandingPageLarge extends StatelessWidget {
  const LandingPageLarge({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (screenSize.width > 400)
          ? 800
          : (screenSize.width >= 400 && screenSize.width <= 700)
              ? 700
              : 900,
      width: screenSize.width,
      child: Stack(
        children: [
          BackgroundColorWidget(screenSize: screenSize),
          (screenSize.width > 400) ? BigCircleWidget() : Container(),
          (screenSize.width > 700) ? MediumCircleWidget() : Container(),
          (screenSize.width > 700) ? SmallCircleWidget() : Container(),
          LandingPageContent(screenSize: screenSize),
        ],
      ),
    );
  }
}

class BigCircleWidget extends StatelessWidget {
  const BigCircleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      right: -100,
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            //  color: AppColors.primaryWhite,
            gradient: AppColors.buttonPrimaryColorGradient,
            shape: BoxShape.circle),
      ),
    );
  }
}

class MediumCircleWidget extends StatelessWidget {
  const MediumCircleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return Positioned(
      top: 250,
      right: 100,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            gradient: AppColors.buttonPrimaryColorGradient,
            //color: AppColors.primaryGreenB1,
            shape: BoxShape.circle),
      ),
    );
  }
}

class SmallCircleWidget extends StatelessWidget {
  const SmallCircleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 500,
      right: 120,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppColors.buttonPrimaryColorGradient,
          // color: AppColors.primaryWhite,
        ),
      ),
    );
  }
}

class BackgroundColorWidget extends StatelessWidget {
  const BackgroundColorWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: (screenSize.width > 400)
          ? 700
          : (screenSize.width >= 400 && screenSize.width <= 700)
              ? 700
              : 900,
      color: AppColors.primaryBlueColor,
      child: Opacity(
        opacity: 0.3,
        child: Image.network(
          "assets/background_image.jpeg",
          //  height: (screenSize.width < 1400) ? 800 : 1500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LandingPageContent extends StatelessWidget {
  const LandingPageContent({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (screenSize.width < 700) ? 50 : 200,
      left: 0,
      child: Container(
        width: screenSize.width,
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(ConstString.appSubtitle,
                      textStyle: TextStyle(
                          fontFamily: 'SF-Pro-Text-Light',
                          color: AppColors.lightGreyColorC4,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          letterSpacing: .5),
                      textAlign: TextAlign.start,
                      speed: const Duration(milliseconds: 150)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: AutoSizeText(
                  ConstString.appMainTitle,
                  style: AppTextStyles.mainTitleRegularWhite10,
                  textAlign: TextAlign.start,
                  minFontSize: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              AutoSizeText(
                ConstString.appCoveValueTwo,
                style: AppTextStyles.mainTitleRegularGreen10,
                textAlign: TextAlign.start,
                minFontSize: 17,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                child: Column(
                  children: [
                    AutoSizeText(
                      ConstString.getEarlyAccess,
                      style: AppTextStyles.mainTitleRegularWhite10,
                      textAlign: TextAlign.center,
                      minFontSize: 12,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SubscriptionButton(
                            fontSize: 10,
                            width: 140,
                            height: 40,
                            tittle: "I\'m A Traveler",
                            dialog: () {
                              showDialog(
                                context: context,
                                builder: (context) => SubscriptionDialog(),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: SubscriptionButton(
                            width: 140,
                            height: 40,
                            fontSize: 10,
                            tittle: "I'm A Freelancer",
                            dialog: () {
                              // print(screenSize.height);
                              // print(screenSize.width);
                              showDialog(
                                context: context,
                                builder: (context) => FreelancerRequestAccess(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

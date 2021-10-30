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
      height: (screenSize.width >= 400) ? 750 : 850,
      width: screenSize.width,
      child: Stack(
        children: [
          BackgroundColorWidget(
            screenSize: screenSize,
          ),
          (screenSize.width > 480) ? BigCircleWidget() : Container(),
          (screenSize.width > 750) ? MediumCircleWidget() : Container(),
          (screenSize.width > 750) ? SmallCircleWidget() : Container(),
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
      height: (screenSize.width >= 400) ? 750 : 850,
      color: AppColors.primaryBlueColor,
      // child: Opacity(
      //   opacity: 0.3,
      //   child: Image.network(
      //     ConstString.backgroundImage,
      //
      //     //  height: (screenSize.width < 1400) ? 800 : 1500,
      //     fit: BoxFit.cover,
      //   ),
      // ),
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
      top: (screenSize.width >= 350) ? 100 : 50,
      child: Container(
        width: screenSize.width,
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
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
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .5),
                      textAlign: TextAlign.start,
                      speed: const Duration(milliseconds: 150)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
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
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: AutoSizeText(
                  ConstString.appCoveValueTwo,
                  style: AppTextStyles.mainTitleRegularGreen10,
                  textAlign: TextAlign.start,
                  minFontSize: 18,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    AutoSizeText(
                      ConstString.getEarlyAccess,
                      style: AppTextStyles.mainTitleRegularWhite10,
                      textAlign: TextAlign.center,
                      minFontSize: 18,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    (screenSize.width < 420)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SubscriptionButton(
                                fontSize: 18,
                                width: 160,
                                height: 50,
                                tittle: "I\'m a Traveler",
                                dialog: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => SubscriptionDialog(),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SubscriptionButton(
                                width: 160,
                                height: 50,
                                fontSize: 18,
                                tittle: "I'm a Freelancer",
                                dialog: () {
                                  // print(screenSize.height);
                                  // print(screenSize.width);
                                  showDialog(
                                    context: context,
                                    builder: (context) =>
                                        FreelancerRequestAccess(),
                                  );
                                },
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SubscriptionButton(
                                  fontSize: 18,
                                  width: 160,
                                  height: 50,
                                  tittle: "I\'m a Traveler",
                                  dialog: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) =>
                                          SubscriptionDialog(),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: SubscriptionButton(
                                  width: 160,
                                  height: 50,
                                  fontSize: 18,
                                  tittle: "I'm a Freelancer",
                                  dialog: () {
                                    // print(screenSize.height);
                                    // print(screenSize.width);
                                    showDialog(
                                      context: context,
                                      builder: (context) =>
                                          FreelancerRequestAccess(),
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

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/subscription_button.dart';
import 'package:webapptrial/widgets/time_counter_widget.dart';

class LandingPageSmall extends StatelessWidget {
  const LandingPageSmall({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne( ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.purpleColor,
              gradient: AppColors.mainPageGradient
            ),
            child: SizedBox(
              height: 1300,
              width: screenSize.width,
              child: Opacity(
                opacity: 0,
                child: Image.network(
                  'assets/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: screenSize.width,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 180),
          child: Column(
            children: <Widget>[
              Text(
                ConstString.appSubtitle,
                style: AppTextStyles.mainTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(ConstString.appCoveValue,
                  style: AppTextStyles.titleGreen,
                  textAlign: TextAlign.center),

              const SizedBox(
                height: 100,
              ),
              Container(
                width: screenSize.width,
                child: Center(
                  child: Text(
                    ConstString.donotMissOut,
                    style: AppTextStyles.subTitleWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: screenSize.width,
                child: Center(
                  child: TimeCounterWidget(
                    height: 80,
                    width: 270,
                  ),
                ),
              ),

              Container(
                width: screenSize.width,
                child: Center(
                  child: Text(
                      ConstString.formMessage,
                      style:  AppTextStyles.subTitleWhite,
                    textAlign: TextAlign.center,


                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SubscriptionButton(
                height: 45,
                width: 400
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                "assets/comingsoon.png",
                scale: 2.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColors.purpleColor,
                        offset: Offset(0, 1),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Image.network(
                      "assets/download_google.png",
                      width: 150,
                      height: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColors.purpleColor,
                        offset: Offset(0, 1),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Image.network(
                      "assets/download_apple.png",
                      width: 150,
                      height: 45,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

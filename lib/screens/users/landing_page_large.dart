import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/subscription_button.dart';
import 'package:webapptrial/widgets/time_counter_widget.dart';

class LandingPageLarge extends StatelessWidget {
  const LandingPageLarge({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.purpleColor,
              gradient: AppColors.mainPageGradient

            ),
            child: SizedBox(
              height: 1000,
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

          padding: EdgeInsets.only(
            left: 100, right: 100,
          top: 200, bottom: 50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[


              Container(
                width: 600,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ConstString.appSubtitle,
                      style: AppTextStyles.mainTitle,
                      textAlign: TextAlign.start,
                    ),
                    const  SizedBox(
                      height:  30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(ConstString.appCoveValue,
                          style: AppTextStyles.titleGreen,
                          textAlign: TextAlign.start),
                    ),

                    const SizedBox(
                      height: 120,
                    ),

                    Container(
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ConstString.donotMissOut,
                            style: AppTextStyles.subTitleWhite,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TimeCounterWidget(
                            height: 80,
                            width: 270,
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            ConstString.formMessage,
                            style: AppTextStyles.subTitleWhite,
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          SubscriptionButton(

                            width: 400,
                            height: 45,
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),

              Container(
                width: 300,


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Opacity(
                      opacity: 0.8,
                      child: Image.network(
                        "assets/comingsoon.png",
                        scale: 1.5,
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              scale: 1,
                            ),
                          ),
                      //  const SizedBox(   width: 20,                          ),
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
                              scale: 1,
                            ),
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/search.dart';

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
        Container(
          decoration: BoxDecoration(
            color: AppColors.kBlue,
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  AppColors.kBlue,
                  AppColors.lightPurpleColor,
                  AppColors.whiteColorTwo
                ],
                stops: [
                  0.5,
                  0.8,
                  0.5
                ]),
          ),
          child: SizedBox(
            height: screenSize.height * 1.15,
            width: screenSize.width,
            child: Opacity(
              opacity: 0.08,
              child: Image.network(
                'assets/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: screenSize.height / 4,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: screenSize.width * .55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: screenSize.width * .55,
                        child: Text(
                          ConstString.appSubtitle,
                          style: AppTextStyles.headlineWhite,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenSize.width * .50,
                        height: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(ConstString.appCoveValue,
                                style: AppTextStyles.subHeadlineGreen,
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: screenSize.width * .50,
                              child: Text(ConstString.appSlogan,
                                  style: AppTextStyles.mainContentWhite,
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      //   SizedBox( height: screenSize.height / 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          ConstString.formMessage,
                          style: AppTextStyles.mainContentWhite,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Search(
                        width: 500,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 30,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, bottom: 20, top: 50),
                      child: Text(
                        "Coming soon",
                        style: AppTextStyles.mainContentWhite,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: AppColors.deepPurpleColor,
                              offset: Offset(0, 1),
                              blurRadius: 10,
                            ),
                          ]),
                          child: Image.network(
                            "assets/download_google.png",
                            scale: 1,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: AppColors.deepPurpleColor,
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


                  ],
                ),
              ],
            ),
          ),
        ),


      ],
    );
  }
}

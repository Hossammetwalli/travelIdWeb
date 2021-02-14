import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/search.dart';

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
        Container(
          decoration: BoxDecoration(
            color: AppColors.kBlue,
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  AppColors.kBlue,
                  AppColors.deepPurpleColor,
                ],
                stops: [
                  0,
                  1
                ]),
          ),
          child: SizedBox(
            height: screenSize.height * 1.1,
            width: screenSize.width,
            child: Opacity(
              opacity: .05,
              child: Image.network(
                'assets/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: screenSize.height / 5,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenSize.width *.9,
                      child: Text(
                        ConstString.appSubtitle,
                        style: AppTextStyles.headlineWhite,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox( height:20,),
                    Text(ConstString.appCoveValue,
                        style: AppTextStyles.subHeadlineGreen, textAlign: TextAlign.start),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenSize.width * .8,
                      height: 110,
                      child: Text(ConstString.appSlogan,
                          style: AppTextStyles.mainContentWhite, textAlign: TextAlign.start),
                    ),
                    SizedBox( height: 30,),
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
                    Search(height: 45, width: 400,),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Center(
                        child: Text(
                          "Coming soon",
                          style: AppTextStyles.mainContentWhite,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            width: 150,
                            height: 45,
                          ),
                        ),
                        SizedBox(
                          width: 50,
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
                            width: 150,
                            height: 45,
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
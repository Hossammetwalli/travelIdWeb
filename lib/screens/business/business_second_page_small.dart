import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string_business.dart';
import 'package:webapptrial/const/text_style.dart';

class BusinessSecondPageSmall extends StatelessWidget {
  const BusinessSecondPageSmall({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenSize.width,
          height: 2000,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,

            //   gradient: AppColors.colorGradientBusiness
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Why eTRAVELER iD?", style: AppTextStyles.businessMainNavy,),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(

                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(flip: true),
                    child: ClipPath(
                      clipper: WaveClipperTwo(reverse: true, flip: true),
                      child: Container(
                        height: 600,
                        // width: 300,
                        decoration:
                        BoxDecoration(gradient: AppColors.mainPageGradientReverse),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              width: 200, height: 200,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Image.network(
                                BusinessConstString.goDigital_1,
                                scale: 3,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(BusinessConstString.businessWhyTitle1, style: AppTextStyles.businessSubtitleWhite,),
                            SizedBox(height: 20,),
                            Container(
                              height: 200,
                              width: 300,
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(BusinessConstString.businessWhyDesc1, textAlign: TextAlign.justify, style: AppTextStyles.businessContentWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(flip: true),
                    child: ClipPath(
                      clipper: WaveClipperTwo(reverse: true, flip: true),
                      child: Container(
                        height: 600,
                        // width: 200,
                        decoration: BoxDecoration(
                          gradient: AppColors.mainPageGradientReverse,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              width: 200, height: 200,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Image.network(
                                BusinessConstString.getCloser,
                                scale: 3,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(BusinessConstString.businessWhyTitle2, style: AppTextStyles.businessSubtitleWhite,),
                            SizedBox(height: 20,),
                            Container(
                              height: 200,
                              width: 300,
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(BusinessConstString.businessWhyDesc2, textAlign: TextAlign.justify, style: AppTextStyles.businessContentWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(flip: true),
                    child: ClipPath(
                      clipper: WaveClipperTwo(reverse: true, flip: true),
                      child: Container(
                        height: 600,
                        // width: 300,
                        decoration: BoxDecoration(
                          gradient: AppColors.mainPageGradientReverse,

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              width: 200, height: 200,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Image.network(
                                BusinessConstString.getRevenue,
                                scale: 3,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(BusinessConstString.businessWhyTitle3, style: AppTextStyles.businessSubtitleWhite,),
                            SizedBox(height: 20,),
                            Container(
                              height: 200,
                              width: 300,
                              padding: EdgeInsets.only(left: 20, right: 20),
                              //color: AppColors.whiteColor,
                              child: Text(BusinessConstString.businessWhyDesc3, textAlign: TextAlign.justify, style: AppTextStyles.businessContentWhite),
                            ),
                          ],
                        ),
                      ),
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

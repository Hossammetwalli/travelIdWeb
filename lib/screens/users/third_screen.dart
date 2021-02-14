import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/widgets/feature_screen_three_widget.dart';
import 'package:webapptrial/widgets/responsive.dart';

class ThirdPage extends StatelessWidget {
  final double _width;

  const ThirdPage({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? ClipPath(
      clipper: WaveClipperTwo(reverse: true),
          child: ClipPath(
            clipper: WaveClipperTwo(flip: true),
            child: Container(
                height: 500,
                width: _width ,
                padding: const EdgeInsets.only(
                  left: 100,
                  right: 100,
                  top: 70,
                ),
               // color: AppColors.purpleColor,
                decoration: BoxDecoration(
                  gradient: AppColors.mainPageGradient
                ),

                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    // Text(
                    //   ConstString.whyToChoose,
                    //   style: ResponsiveWidget.isLargeScreen(context)
                    //       ? AppTextStyles.subHeadlineWhite
                    //       : AppTextStyles.subHeadlineWhite,
                    //   textAlign: TextAlign.center,
                    // ),
                    // const SizedBox(
                    //   height: 70,
                    // ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FeatureScreenThreeWidget(text: ConstString.whyToChooseTwo, padding: 0, containerWidth: 200,textDescription: ConstString.whyToChooseTwoDesc,),
                          FeatureScreenThreeWidget(text: ConstString.whyToChooseFour,padding: 0, containerWidth: 200,textDescription: ConstString.whyToChooseFourDesc,),
                          FeatureScreenThreeWidget(text: ConstString.whyToChooseThree,padding: 0, containerWidth: 200,textDescription: ConstString.whyToChooseThreeDesc,),
                          FeatureScreenThreeWidget(text: ConstString.whyToChooseOne,padding: 0, containerWidth: 200,textDescription: ConstString.whyToChooseOneDesc,),
                          FeatureScreenThreeWidget(text: ConstString.whyToChooseFive,padding: 0, containerWidth: 200,textDescription: ConstString.whyToChooseFiveDesc,),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        )
        : ClipPath(
      clipper: WaveClipperTwo(reverse: true),
          child: ClipPath(
            clipper: WaveClipperTwo(flip: true),
            child: Container(
                height: 1000,
                width: _width ,

                decoration: BoxDecoration(
                  gradient: AppColors.mainPageGradient
                ),


                child: Column(
                  children: [


                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FeatureScreenThreeWidget(text: ConstString.whyToChooseTwo,padding: 10, containerWidth: 270,textDescription: ConstString.whyToChooseTwoDesc,),
                              FeatureScreenThreeWidget(text: ConstString.whyToChooseFour,padding: 10, containerWidth: 270,textDescription: ConstString.whyToChooseFourDesc,),

                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              FeatureScreenThreeWidget(text: ConstString.whyToChooseThree,padding: 10, containerWidth: 270,textDescription: ConstString.whyToChooseThreeDesc,),
                              FeatureScreenThreeWidget(text: ConstString.whyToChooseOne,padding: 10, containerWidth: 270,textDescription: ConstString.whyToChooseOneDesc,),

                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              FeatureScreenThreeWidget(text: ConstString.whyToChooseFive,padding: 10, containerWidth: 270,textDescription: ConstString.whyToChooseFiveDesc,),


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

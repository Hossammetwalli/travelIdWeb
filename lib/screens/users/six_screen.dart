import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class SixthPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context)
        ? Container(
      height: 900,
      width: screenSize.width * .9,
      color: AppColors.whiteColor,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Opacity(
                  opacity: 1,
                  child: Image.network(
                    ConstString.featureControlImage,
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                ),

                ClipOval(
                  child: Container(
                    width: screenSize.width ,
                    height: screenSize.width <= 800? 300: 450,
                    padding: const EdgeInsets.all(60),

                    decoration: BoxDecoration(
                        gradient: AppColors.mainPageGradient
                    ),

                    child: Center(
                      child: Text(
                        ConstString.sixPageContent,
                        style:  screenSize.width <= 800? AppTextStyles.subTitleWhite: AppTextStyles.titleWhite,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        : Container(
            height: 500,
            width: 1200,

            color: AppColors.whiteColor, // Colors.indigo[900],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 1,
                  child: Image.network(
                    ConstString.featureControlImage,
                    fit: BoxFit.cover,
                    scale: 1,
                    // width: 200,
                    // height: 200,
                  ),
                ),
                ClipOval(

                  child: Container(
                    width: 800,
                    height: 500,

                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        gradient: AppColors.mainPageGradient
                    ),


                    child: Center(
                      child: Text(
                        ConstString.sixPageContent,
                        style: AppTextStyles.titleWhite,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

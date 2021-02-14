import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class FeatureScreenTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 900,
            width: 500,

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
                const SizedBox(
                  height: 50,
                ),
                ClipPath(
                  clipper: ArrowClipper(70, 80, Edge.BOTTOM),
                  child: Container(
                    color: AppColors.greyColor,
                    width: 400,

                    child: Text(
                      ConstString.featureContent,
                      style: AppTextStyles.middleComment,
                      textAlign: TextAlign.justify,
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
                ClipPath(
                  clipper: OctagonalClipper(),
                  child: Container(
                    color: AppColors.greyColor,
                    width: 600,
                    height: 500,
                    padding: const EdgeInsets.all(40),
                    child: Center(
                      child: Text(
                        ConstString.featureContent,
                        style:  AppTextStyles.middleComment,
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

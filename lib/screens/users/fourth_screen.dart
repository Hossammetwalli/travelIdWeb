import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class FeatureScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 900,
            width: 500,
            color: AppColors.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Opacity(
                  opacity: 1,
                  child: Image.network(
                    ConstString.featurePeopleTravelImage,
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 400,
                  child: Text(
                    ConstString.middleRowContent1,
                    style:  AppTextStyles.middleComment,
                    textAlign: TextAlign.justify,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 700,
                  child: Text(
                    ConstString.middleRowContent1,
                    style: AppTextStyles.middleComment,
                    textAlign: TextAlign.start,
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.network(
                    ConstString.featurePeopleTravelImage,
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                ),
              ],
            ),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';

class FeatureScreenThreeWidget extends  StatelessWidget {
  final String text, textDescription;
   final double containerWidth, padding;


  const FeatureScreenThreeWidget({Key key, @required this.text, @required this.textDescription,@required this.containerWidth,@required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle),
            child: Center(
                child: Text(
                  text,
                  style: AppTextStyles.subTitleBlack,
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              width: containerWidth,
              padding:  EdgeInsets.only(
                  left: padding, right: padding),
              child: Text(
                textDescription,
                style: AppTextStyles.contentWhite,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}

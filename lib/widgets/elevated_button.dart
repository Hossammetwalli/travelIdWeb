import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class SubscriptionButton extends StatelessWidget {
  final double height, width, fontSize;
  final String tittle;
  final Function dialog;

  const SubscriptionButton(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.tittle,
      @required this.dialog,
      @required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      fontSize: 12,
      textStyle: AppTextStyles.mainTitleRegularNavy10,
      width: width,
      height: height,
      primaryColor: AppColors.primaryGreenB1,

      // gradient: AppColors.buttonPrimaryColorGradient,
      radius: 5,
      onPress: dialog,

      title: tittle,
    );
  }
}

class AppElevatedButton extends StatelessWidget {
  final double width, height, radius, fontSize;
  final Function onPress;
  final String title;
  final Color primaryColor;
  final TextStyle textStyle;

  const AppElevatedButton(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.onPress,
      @required this.title,
      @required this.radius,
      @required this.primaryColor,
      @required this.textStyle,
      @required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          child: AutoSizeText(
            title,
            style: textStyle,
            minFontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final double width, height, radius, fontSize;
  final Function onPress;
  final String title;
  final Color primaryColor, backGroundColor;
  final TextStyle textStyle;

  const AppTextButton(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.onPress,
      @required this.title,
      @required this.radius,
      @required this.primaryColor,
      @required this.textStyle,
      @required this.backGroundColor,
      @required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          child: AutoSizeText(
            title,
            style: textStyle,
            minFontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

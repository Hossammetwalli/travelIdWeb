import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';

class AppElevatedButton extends StatelessWidget {
  final double width, height, radius;
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
      this.radius,
      this.primaryColor,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.lightPurpleColor,
          onPrimary: AppColors.navyColor,
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
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final double width, height, radius;
  final Function onPress;
  final String title;
  final Color primaryColor;
  final TextStyle textStyle;

  const AppTextButton(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.onPress,
      @required this.title,
      this.radius,
      this.primaryColor,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
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
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

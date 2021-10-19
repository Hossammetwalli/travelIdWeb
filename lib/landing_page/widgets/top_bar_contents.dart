import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class TopBarContents extends StatelessWidget {
  final double opacity;
  final String buttonOneName, buttonTwoName;
  final Function onPressOne, onPressTwo;
  final Color topBarColor;

  const TopBarContents(
      {Key key,
      @required this.opacity,
      @required this.buttonOneName,
      this.buttonTwoName,
      @required this.onPressOne,
      this.onPressTwo,
      @required this.topBarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: topBarColor.withOpacity(opacity),
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          // right: screenSize.width * .1,
          left: screenSize.width * .15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  "assets/logo_icon_white.png",
                  scale: 3,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 40,
                  color: AppColors.primaryGreenB1,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  "assets/logo_name_green.png",
                  scale: 2,
                ),
                SizedBox(width: screenSize.width * .05),
                AppTextButton(
                    fontSize: 14,
                    radius: 5,
                    height: 40,
                    width: 100,
                    title: buttonOneName,
                    textStyle: AppTextStyles.mainTitleRegularWhite10,
                    backGroundColor: Colors.transparent,
                    primaryColor: Colors.transparent,
                    onPress: onPressOne
                    /*
                      () async {
                    await  Navigator.of(context).pushNamed(routeOne);
                  },
                      */
                    ),
                AppTextButton(
                    fontSize: 14,
                    radius: 5,
                    height: 40,
                    width: 130,
                    title: buttonTwoName,
                    textStyle: AppTextStyles.mainTitleRegularWhite10,
                    backGroundColor: Colors.transparent,
                    primaryColor: Colors.transparent,
                    onPress: onPressTwo

                    /*
                      () {
                    Navigator.of(context).pushNamed(routeTwo);
                  },
                     */
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AboutUs extends StatelessWidget {
  final double width;
  final double height;

  const AboutUs({Key key, @required this.width, @required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxWidth: 500, minWidth: 300),
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            AutoSizeText(
              "Who we are",
              style: AppTextStyles.mainTitleRegularWhite10,
              minFontSize: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              ConstString.aboutContent,
              style: AppTextStyles.mainTitleRegularWhite10,
              minFontSize: 14,
            ),
            const SizedBox(
              height: 30,
            ),
            AutoSizeText(
              ConstString.aboutMission,
              style: AppTextStyles.mainTitleRegularWhite10,
              minFontSize: 14,
            ),
          ],
        ));
  }
}

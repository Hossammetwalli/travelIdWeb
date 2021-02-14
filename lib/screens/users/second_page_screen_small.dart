import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';

class MiddleRowSmallScreen extends StatelessWidget {
  const MiddleRowSmallScreen({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: 1500,

      margin: const EdgeInsets.all(50),
      color: AppColors.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    ConstString.whyMiddleRow1,
                    style: AppTextStyles.headlineBlue,
                    textAlign: TextAlign.center,
                  ),
                ),
                // Text(ConstString.whyMiddleRow2,
                //     style: AppTextStyles.headlineBlue),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Opacity(
              opacity: 1,
              child: Image.network(
                ConstString.middleImage3,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ConstString.middleRowTitle3,
                    style: AppTextStyles.subHeadlineBlue,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    ConstString.middleRowContent3,
                    style: AppTextStyles.mainContentBlack,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Opacity(
              opacity: 1,
              child: Image.network(
                ConstString.middleImage1,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  ConstString.middleRowTitle4,
                  style: AppTextStyles.subHeadlineBlue,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: Text(
                  ConstString.middleRowContent4,
                  style: AppTextStyles.mainContentBlack,
                  textAlign: TextAlign.justify,
                )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Opacity(
              opacity: 1,
              child: Image.network(
                ConstString.middleImage5,
                fit: BoxFit.cover,
                scale: 1,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ConstString.middleRowTitle2,
                    style: AppTextStyles.subHeadlineBlue,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    ConstString.middleRowContent2,
                    style: AppTextStyles.mainContentBlack,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Opacity(
              opacity: 1,
              child: Image.network(
                ConstString.middleImage2,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

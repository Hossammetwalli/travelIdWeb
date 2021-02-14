import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';

class SecondPageScreenSmall extends StatelessWidget {
  const SecondPageScreenSmall({
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
            height: 100,
            width: screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    ConstString.whyMiddleRow1,
                    style: AppTextStyles.titleBlack,
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
          const SizedBox(
            height: 50,
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
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  ConstString.middleRowTitle3,
                  style: AppTextStyles.subTitleBlack,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  ConstString.middleRowContent3,
                  style: AppTextStyles.contentBlack,
                  textAlign: TextAlign.justify,
                ),
              ],
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
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  ConstString.middleRowTitle4,
                  style: AppTextStyles.subTitleBlack,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: Text(
                  ConstString.middleRowContent4,
                  style: AppTextStyles.contentBlack,
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
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ConstString.middleRowTitle2,
                  style: AppTextStyles.subTitleBlack,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  ConstString.middleRowContent2,
                  style: AppTextStyles.contentBlack,
                  textAlign: TextAlign.justify,
                ),
              ],
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class WhyTravelIdWidget extends StatelessWidget {
  const WhyTravelIdWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? BigScreenWhy(screenSize: screenSize)
        :
        //Small Screen
        SmallScreenWhy(screenSize: screenSize);
  }
}

class BigScreenWhy extends StatelessWidget {
  const BigScreenWhy({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title

        //First row

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
                child: Image.network(
                  ConstString.assetFirstRow,
                  scale: 2,
                  fit: BoxFit.fill,
                  // scale: 2,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: RowContent(
                screenSize: screenSize,
                width: 450,
                rowMainTitle: ConstString.firstRowMainTitle,
                rowSubtitle1: ConstString.firstRowSubtitle1,
                rowSubtitle2: ConstString.firstRowSubtitle2,
                rowSubtitle3: ConstString.firstRowSubtitle3,
                rowSubtitle11: ConstString.firstRowSubtitle11,
                rowSubtitle22: ConstString.firstRowSubtitle22,
                rowSubtitle33: ConstString.firstRowSubtitle33,
              ),
            ),
          ],
        ),

        //2nd row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: RowContent(
                screenSize: screenSize,
                width: 450,
                rowMainTitle: ConstString.secondRowMainTitle,
                rowSubtitle1: ConstString.secondRowSubtitle1,
                rowSubtitle2: ConstString.secondRowSubtitle2,
                rowSubtitle3: ConstString.secondRowSubtitle3,
                rowSubtitle11: ConstString.secondRowSubtitle11,
                rowSubtitle22: ConstString.secondRowSubtitle22,
                rowSubtitle33: ConstString.secondRowSubtitle33,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
                child: Image.network(
                  ConstString.assetSecondRow,
                  scale: 2,

                  fit: BoxFit.fill,
                  // scale: 2,
                ),
              ),
            ),
          ],
        ),
        //3rd row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
                child: Image.network(
                  ConstString.assetThirdRow,
                  scale: 2,

                  fit: BoxFit.cover,
                  // scale: 2,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: RowContent(
                screenSize: screenSize,
                width: 450,
                rowMainTitle: ConstString.thirdRowMainTitle,
                rowSubtitle1: ConstString.thirdRowSubtitle1,
                rowSubtitle2: ConstString.thirdRowSubtitle2,
                rowSubtitle3: ConstString.thirdRowSubtitle3,
                rowSubtitle11: ConstString.thirdRowSubtitle11,
                rowSubtitle22: ConstString.thirdRowSubtitle22,
                rowSubtitle33: ConstString.thirdRowSubtitle33,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SmallScreenWhy extends StatelessWidget {
  const SmallScreenWhy({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.network(
            ConstString.assetFirstRow,
            scale: 1,

            fit: BoxFit.fill,
            // scale: 2,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width,
          rowMainTitle: ConstString.firstRowMainTitle,
          rowSubtitle1: ConstString.firstRowSubtitle1,
          rowSubtitle2: ConstString.firstRowSubtitle2,
          rowSubtitle3: ConstString.firstRowSubtitle3,
          rowSubtitle11: ConstString.firstRowSubtitle11,
          rowSubtitle22: ConstString.firstRowSubtitle22,
          rowSubtitle33: ConstString.firstRowSubtitle33,
        ),
        const SizedBox(
          height: 15,
        ),
        //2nd secreen
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.network(
            ConstString.assetSecondRow,
            scale: 1,

            fit: BoxFit.fill,
            // scale: 2,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width,
          rowMainTitle: ConstString.secondRowMainTitle,
          rowSubtitle1: ConstString.secondRowSubtitle1,
          rowSubtitle2: ConstString.secondRowSubtitle2,
          rowSubtitle3: ConstString.secondRowSubtitle3,
          rowSubtitle11: ConstString.secondRowSubtitle11,
          rowSubtitle22: ConstString.secondRowSubtitle22,
          rowSubtitle33: ConstString.secondRowSubtitle33,
        ),
        const SizedBox(
          height: 15,
        ),

        //3rd screen

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.network(
            ConstString.assetThirdRow,
            scale: 1,

            fit: BoxFit.cover,
            // scale: 2,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width,
          rowMainTitle: ConstString.thirdRowMainTitle,
          rowSubtitle1: ConstString.thirdRowSubtitle1,
          rowSubtitle2: ConstString.thirdRowSubtitle2,
          rowSubtitle3: ConstString.thirdRowSubtitle3,
          rowSubtitle11: ConstString.thirdRowSubtitle11,
          rowSubtitle22: ConstString.thirdRowSubtitle22,
          rowSubtitle33: ConstString.thirdRowSubtitle33,
        ),
      ],
    );
  }
}

class RowContent extends StatelessWidget {
  const RowContent({
    Key key,
    @required this.screenSize,
    @required this.width,
    @required this.rowMainTitle,
    @required this.rowSubtitle1,
    @required this.rowSubtitle11,
    @required this.rowSubtitle2,
    @required this.rowSubtitle22,
    @required this.rowSubtitle3,
    @required this.rowSubtitle33,
  }) : super(key: key);

  final Size screenSize;
  final double width;
  final String rowMainTitle,
      rowSubtitle1,
      rowSubtitle11,
      rowSubtitle2,
      rowSubtitle22,
      rowSubtitle3,
      rowSubtitle33;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: BoxConstraints(maxWidth: width),
      padding: const EdgeInsets.only(left: 25, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                rowMainTitle,
                style: AppTextStyles.mainTitleRegularGreen10,
                minFontSize: 22,
              ),
              const SizedBox(
                height: 15,
              ),
              AutoSizeText(
                rowSubtitle1,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                rowSubtitle11,
                style: AppTextStyles.mainTitleRegularPrimNavy10,
                minFontSize: 16,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
//2nd why
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              AutoSizeText(
                rowSubtitle2,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                rowSubtitle22,
                style: AppTextStyles.mainTitleRegularPrimNavy10,
                minFontSize: 16,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          //3rd why

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              AutoSizeText(
                rowSubtitle3,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                rowSubtitle33,
                style: AppTextStyles.mainTitleRegularPrimNavy10,
                minFontSize: 16,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
    return (ResponsiveWidget.isLargeScreen(context))
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
        Container(
          width: screenSize.width,
          constraints: BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.only(bottom: 100, top: 100),
          child: AutoSizeText(
            ConstString.whyMainTitle,
            style: AppTextStyles.mainTitleRegularNavy10,
            textAlign: TextAlign.center,
            minFontSize: 45,
          ),
        ),
        //First row

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: (screenSize.width >= 1100) ? 550 : 480,
                    maxHeight: 550),
                child: Image.network(
                  ConstString.assetFirstRow,
                  scale: 1,

                  fit: BoxFit.cover,
                  // scale: 2,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              RowContent(
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
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        //2nd row
        Container(
          //color: AppColors.lightGreyColorF7,
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RowContent(
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
              SizedBox(
                width: 50,
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: (screenSize.width >= 1100) ? 550 : 480,
                    maxHeight: 550),
                child: Image.network(
                  ConstString.assetSecondRow,
                  scale: 1,

                  fit: BoxFit.cover,
                  // scale: 2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
        ),
        //3rd row
        Container(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: (screenSize.width >= 1100) ? 550 : 480,
                    maxHeight: 550),
                child: Image.network(
                  ConstString.assetThirdRow,
                  scale: 1,

                  fit: BoxFit.cover,
                  // scale: 2,
                ),
              ),
              SizedBox(width: 50),
              RowContent(
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
            ],
          ),
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
        SizedBox(
          height: 100,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 600),
          child: AutoSizeText(
            ConstString.whyMainTitle,
            style: AppTextStyles.mainTitleRegularNavy10,
            textAlign: TextAlign.center,
            minFontSize: 40,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Image.network(
          ConstString.assetFirstRow,
          scale: 2,

          fit: BoxFit.cover,
          // scale: 2,
        ),
        SizedBox(
          height: 50,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width * .9,
          rowMainTitle: ConstString.firstRowMainTitle,
          rowSubtitle1: ConstString.firstRowSubtitle1,
          rowSubtitle2: ConstString.firstRowSubtitle2,
          rowSubtitle3: ConstString.firstRowSubtitle3,
          rowSubtitle11: ConstString.firstRowSubtitle11,
          rowSubtitle22: ConstString.firstRowSubtitle22,
          rowSubtitle33: ConstString.firstRowSubtitle33,
        ),
        SizedBox(
          height: 70,
        ),
        //2nd secreen
        Image.network(
          ConstString.assetSecondRow,
          scale: 2,

          fit: BoxFit.cover,
          // scale: 2,
        ),
        SizedBox(
          height: 50,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width * .9,
          rowMainTitle: ConstString.secondRowMainTitle,
          rowSubtitle1: ConstString.secondRowSubtitle1,
          rowSubtitle2: ConstString.secondRowSubtitle2,
          rowSubtitle3: ConstString.secondRowSubtitle3,
          rowSubtitle11: ConstString.secondRowSubtitle11,
          rowSubtitle22: ConstString.secondRowSubtitle22,
          rowSubtitle33: ConstString.secondRowSubtitle33,
        ),
        SizedBox(
          height: 70,
        ),

        //3rd screen

        Image.network(
          ConstString.assetThirdRow,
          scale: 2,

          fit: BoxFit.cover,
          // scale: 2,
        ),
        SizedBox(
          height: 50,
        ),
        RowContent(
          screenSize: screenSize,
          width: (screenSize.width > 500) ? 500 : screenSize.width * .9,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                rowMainTitle,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 30,
              ),
              SizedBox(
                height: 15,
              ),
              AutoSizeText(
                rowSubtitle1,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 20,
              ),
              SizedBox(
                height: 5,
              ),
              AutoSizeText(
                rowSubtitle11,
                style: AppTextStyles.mainTitleRegularNavy10,
                maxFontSize: 12,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
//2nd why
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              AutoSizeText(
                rowSubtitle2,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              AutoSizeText(
                rowSubtitle22,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 12,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          //3rd why

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                rowSubtitle3,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              AutoSizeText(
                rowSubtitle33,
                style: AppTextStyles.mainTitleRegularNavy10,
                minFontSize: 12,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

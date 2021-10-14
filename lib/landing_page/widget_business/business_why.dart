import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class BusinessWhyTravelIdWidget extends StatelessWidget {
  const BusinessWhyTravelIdWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return (ResponsiveWidget.isLargeScreen(context))
        ? BusinessBigScreenWhy(screenSize: screenSize)
        :
        //Small Screen
        BusinessSmallScreenWhy(screenSize: screenSize);
  }
}

class BusinessBigScreenWhy extends StatelessWidget {
  const BusinessBigScreenWhy({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 650,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  width: screenSize.width,
                  child: Image.network(
                    BusinessConstString.businessBackground,
                    height: 485,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 400,
                    width: screenSize.width,
                    // constraints:
                    //     BoxConstraints(maxWidth: screenSize.width * .7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BusinessRowContent(
                          screenSize: screenSize,
                          width: 310,
                          image: BusinessConstString.businessRevenue,
                          mainTitle: BusinessConstString.businessWhyRevenue1,
                          subTitle1: BusinessConstString.businessWhyRevenue2,
                          subTitle2: BusinessConstString.businessWhyRevenue3,
                          subTitle3: BusinessConstString.businessWhyRevenue4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        BusinessRowContent(
                          screenSize: screenSize,
                          width: 310,
                          image: BusinessConstString.businessContactless,
                          mainTitle: BusinessConstString.businessWhyContactless,
                          subTitle1:
                              BusinessConstString.businessWhyContactless1,
                          subTitle2:
                              BusinessConstString.businessWhyContactless2,
                          subTitle3:
                              BusinessConstString.businessWhyContactless3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        BusinessRowContent(
                          screenSize: screenSize,
                          width: 310,
                          image: BusinessConstString.businessHire,
                          mainTitle: BusinessConstString.businessWhyHire,
                          subTitle1: BusinessConstString.businessWhyHire1,
                          subTitle2: BusinessConstString.businessWhyHire2,
                          subTitle3: BusinessConstString.businessWhyHire3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
          // Container(
          //   height: 200,
          //   width: screenSize.width,
          //   constraints: BoxConstraints(maxWidth: 600),
          //   child: AutoSizeText(
          //     BusinessConstString.businessValue1,
          //     style: AppTextStyles.titleHeavyNavy2,
          //     textAlign: TextAlign.center,
          //     minFontSize: 50,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class BusinessSmallScreenWhy extends StatelessWidget {
  const BusinessSmallScreenWhy({
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
        const SizedBox(
          height: 50,
        ),
        BusinessRowContent(
          screenSize: screenSize,
          width: 400,
          image: BusinessConstString.businessRevenue,
          mainTitle: BusinessConstString.businessWhyRevenue1,
          subTitle1: BusinessConstString.businessWhyRevenue2,
          subTitle2: BusinessConstString.businessWhyRevenue3,
          subTitle3: BusinessConstString.businessWhyRevenue4,
        ),
        const SizedBox(
          height: 20,
        ),
        BusinessRowContent(
          screenSize: screenSize,
          width: 400,
          image: BusinessConstString.businessContactless,
          mainTitle: BusinessConstString.businessWhyContactless,
          subTitle1: BusinessConstString.businessWhyContactless1,
          subTitle2: BusinessConstString.businessWhyContactless2,
          subTitle3: BusinessConstString.businessWhyContactless3,
        ),
        const SizedBox(
          height: 20,
        ),
        BusinessRowContent(
          screenSize: screenSize,
          width: 400,
          image: BusinessConstString.businessHire,
          mainTitle: BusinessConstString.businessWhyHire,
          subTitle1: BusinessConstString.businessWhyHire1,
          subTitle2: BusinessConstString.businessWhyHire2,
          subTitle3: BusinessConstString.businessWhyHire3,
        ),
        const SizedBox(
          height: 150,
        )
      ],
    );
  }
}

class BusinessRowContent extends StatelessWidget {
  const BusinessRowContent(
      {Key key,
      @required this.screenSize,
      @required this.width,
      @required this.mainTitle,
      @required this.subTitle1,
      @required this.subTitle2,
      @required this.subTitle3,
      @required this.image})
      : super(key: key);

  final Size screenSize;
  final double width;
  final String mainTitle, subTitle1, subTitle2, subTitle3, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: AppColors.primaryBlueColor,
      child: Container(
        width: width,
        height: 310,
        constraints: BoxConstraints(maxWidth: width),
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 150, width: 150,

              fit: BoxFit.cover,
              // scale: 2,
            ),
            AutoSizeText(
              mainTitle,
              style: AppTextStyles.mainTitleRegularNavy10,
              minFontSize: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 5,
                  color: AppColors.primaryNavyColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: AutoSizeText(
                    subTitle1,
                    style: AppTextStyles.mainTitleRegularNavy10,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 5,
                  color: AppColors.primaryNavyColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: AutoSizeText(
                    subTitle2,
                    style: AppTextStyles.mainTitleRegularNavy10,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 5,
                  color: AppColors.primaryNavyColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: AutoSizeText(
                    subTitle3,
                    style: AppTextStyles.mainTitleRegularNavy10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

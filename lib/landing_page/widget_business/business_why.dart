import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class BusinessWhyTravelIdWidget extends StatelessWidget {
  const BusinessWhyTravelIdWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return (screenSize.width > 650)
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
                    ConstString.businessBackground1,
                    height: 485,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 480,
                    width: screenSize.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: BusinessRowContent(
                            screenSize: screenSize,
                            width: 310,
                            height: (screenSize.width <= 800) ? 450 : 350,
                            image: ConstString.businessRevenue,
                            mainTitle: BusinessConstString.businessWhyRevenue1,
                            subTitle1: BusinessConstString.businessWhyRevenue2,
                            subTitle2: BusinessConstString.businessWhyRevenue3,
                            subTitle3: BusinessConstString.businessWhyRevenue4,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: BusinessRowContent(
                            screenSize: screenSize,
                            width: 310,
                            height: (screenSize.width <= 900) ? 450 : 350,
                            image: ConstString.businessContactless,
                            mainTitle:
                                BusinessConstString.businessWhyContactless,
                            subTitle1:
                                BusinessConstString.businessWhyContactless1,
                            subTitle2:
                                BusinessConstString.businessWhyContactless2,
                            subTitle3:
                                BusinessConstString.businessWhyContactless3,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: BusinessRowContent(
                            screenSize: screenSize,
                            width: 310,
                            height: (screenSize.width <= 900) ? 450 : 350,
                            image: ConstString.businessHire,
                            mainTitle: BusinessConstString.businessWhyHire,
                            subTitle1: BusinessConstString.businessWhyHire1,
                            subTitle2: BusinessConstString.businessWhyHire2,
                            subTitle3: BusinessConstString.businessWhyHire3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          ),
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
        Padding(
          padding: const EdgeInsets.all(15),
          child: BusinessRowContent(
            screenSize: screenSize,
            width: 350,
            height: 350,
            image: ConstString.businessRevenue,
            mainTitle: BusinessConstString.businessWhyRevenue1,
            subTitle1: BusinessConstString.businessWhyRevenue2,
            subTitle2: BusinessConstString.businessWhyRevenue3,
            subTitle3: BusinessConstString.businessWhyRevenue4,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: BusinessRowContent(
            screenSize: screenSize,
            width: 350,
            height: 350,
            image: ConstString.businessContactless,
            mainTitle: BusinessConstString.businessWhyContactless,
            subTitle1: BusinessConstString.businessWhyContactless1,
            subTitle2: BusinessConstString.businessWhyContactless2,
            subTitle3: BusinessConstString.businessWhyContactless3,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: BusinessRowContent(
            screenSize: screenSize,
            width: 350,
            height: 350,
            image: ConstString.businessHire,
            mainTitle: BusinessConstString.businessWhyHire,
            subTitle1: BusinessConstString.businessWhyHire1,
            subTitle2: BusinessConstString.businessWhyHire2,
            subTitle3: BusinessConstString.businessWhyHire3,
          ),
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
      @required this.image,
      @required this.height})
      : super(key: key);

  final Size screenSize;
  final double width, height;
  final String mainTitle, subTitle1, subTitle2, subTitle3, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: AppColors.primaryBlueColor,
      child: Container(
        width: width,
        height: height,
        constraints: BoxConstraints(maxWidth: width),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 150, width: 150,

                fit: BoxFit.fill,
                // scale: 2,
              ),
              TextRenderer(
                text: AutoSizeText(
                  mainTitle,
                  style: AppTextStyles.mainTitleRegularPrimNavy10,
                  minFontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 7,
                      color: AppColors.primaryNavyColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextRenderer(
                        text: AutoSizeText(
                          subTitle1,
                          style: AppTextStyles.mainTitleRegularNavy10,
                          minFontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 7,
                      color: AppColors.primaryNavyColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextRenderer(
                        text: AutoSizeText(
                          subTitle2,
                          style: AppTextStyles.mainTitleRegularNavy10,
                          minFontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 7,
                      color: AppColors.primaryNavyColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextRenderer(
                        text: AutoSizeText(
                          subTitle3,
                          style: AppTextStyles.mainTitleRegularNavy10,
                          minFontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

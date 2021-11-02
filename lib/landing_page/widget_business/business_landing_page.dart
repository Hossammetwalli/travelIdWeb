import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class LandingPageBusiness extends StatelessWidget {
  const LandingPageBusiness({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: (ResponsiveWidget.isLargeScreen(context)) ? 850 : 900,
      color: AppColors.primaryWhite,
      child: Stack(
        children: [
          (ResponsiveWidget.isLargeScreen(context))
              ? BusinessLandingContentLarge(screenSize: screenSize)
              : BusinessLandingContentSmall(screenSize: screenSize),
        ],
      ),
    );
  }
}

class BusinessLandingContentLarge extends StatelessWidget {
  const BusinessLandingContentLarge({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 0,
      child: Container(
        width: screenSize.width,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                padding: const EdgeInsets.only(left: 50),
                constraints: const BoxConstraints(maxWidth: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextRenderer(
                      text: AutoSizeText(
                        BusinessConstString.businessMainTittle,
                        style: AppTextStyles.mainTitleRegularNavy10,
                        textAlign: TextAlign.start,
                        minFontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextRenderer(
                      text: AutoSizeText(
                        BusinessConstString.businessCoreValue,
                        style: AppTextStyles.mainTitleRegularNavy10,
                        textAlign: TextAlign.start,
                        minFontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AutoSizeText(
                      "Get Business Access",
                      style: AppTextStyles.mainTitleRegularNavy10,
                      textAlign: TextAlign.center,
                      minFontSize: 16,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SubscriptionButton(
                          fontSize: 16,
                          width: 150,
                          height: 40,
                          tittle: "Start",
                          dialog: () {
                            showDialog(
                              context: context,
                              builder: (context) => AdminRequestAccess(),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Image.network(
                ConstString.travelIdImage2,
                scale: .75,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessLandingContentSmall extends StatelessWidget {
  const BusinessLandingContentSmall({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      left: 0,
      child: Container(
        width: screenSize.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                ConstString.travelIdImage2,
                scale: 1,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextRenderer(
                  text: AutoSizeText(
                    BusinessConstString.businessMainTittle,
                    style: AppTextStyles.mainTitleRegularNavy10,
                    textAlign: TextAlign.center,
                    minFontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextRenderer(
                  text: AutoSizeText(
                    BusinessConstString.businessCoreValue,
                    style: AppTextStyles.mainTitleRegularNavy10,
                    textAlign: TextAlign.center,
                    minFontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      "Join now",
                      style: AppTextStyles.mainTitleRegularNavy10,
                      textAlign: TextAlign.center,
                      minFontSize: 16,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SubscriptionButton(
                          fontSize: 16,
                          width: 150,
                          height: 40,
                          tittle: "Start",
                          dialog: () {
                            showDialog(
                              context: context,
                              builder: (context) => AdminRequestAccess(),
                            );
                          },
                        ),
                      ],
                    ),
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

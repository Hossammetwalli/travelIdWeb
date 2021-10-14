import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      height: (ResponsiveWidget.isLargeScreen(context)) ? 670 : 800,
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

        // padding: const EdgeInsets.only(left: 30),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: (screenSize.width < 1200) ? 470 : 500),
                    child: Column(
                      children: [
                        AutoSizeText(
                          BusinessConstString.businessMainTittle,
                          style: AppTextStyles.mainTitleRegularNavy10,
                          textAlign: TextAlign.start,
                          minFontSize: 40,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 450,
                          ),
                          child: AutoSizeText(
                            BusinessConstString.businessCoreValue,
                            style: AppTextStyles.mainTitleRegularNavy10,
                            textAlign: TextAlign.start,
                            minFontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AutoSizeText(
                    "Get Business Access",
                    style: AppTextStyles.mainTitleRegularNavy10,
                    textAlign: TextAlign.center,
                    minFontSize: 12,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SubscriptionButton(
                        fontSize: 15,
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
              Column(
                children: [
                  Image.network(
                    "assets/travel_id_image_2.png",
                    scale: .75,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ],
          ),
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
      top: 50,
      left: 0,
      child: Container(
        width: screenSize.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "assets/travel_id_image_2.png",
                scale: 1,
                fit: BoxFit.fill,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: AutoSizeText(
                  BusinessConstString.businessMainTittle,
                  style: AppTextStyles.mainTitleRegularNavy10,
                  textAlign: TextAlign.center,
                  minFontSize: 35,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: AutoSizeText(
                  BusinessConstString.businessCoreValue,
                  style: AppTextStyles.mainTitleRegularNavy10,
                  textAlign: TextAlign.center,
                  minFontSize: 15,
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
                      minFontSize: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SubscriptionButton(
                          fontSize: 15,
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

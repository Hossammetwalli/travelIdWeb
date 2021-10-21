import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class BottomBar extends StatelessWidget {
  static const String route = '/contact';

  final Color containerColor;
  final Size screenSize;

  const BottomBar(
      {Key key, @required this.containerColor, @required this.screenSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? bottomBarSmall(screenSize, containerColor)
        : bottomBarLarge(screenSize, containerColor);
  }

  Container bottomBarSmall(Size screenSize, Color color) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: MessageWidget(
              width: screenSize.width,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: AboutUs(
              width: screenSize.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 40),
            child: LastBottomBar(
              screenSize: screenSize,
              containerColor: color,
            ),
          )
        ],
      ),
    );
  }

  Container bottomBarLarge(Size screenSize, Color color) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: MessageWidget(
                    width: (screenSize.width < 1000)
                        ? (screenSize.width - 100) / 2
                        : 500,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                color: Colors.blueGrey,
                width: 2,
                height: 400,
              ),
              const SizedBox(
                width: 30,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: AboutUs(
                    width: (screenSize.width < 1000)
                        ? (screenSize.width - 100) / 2
                        : 500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          LastBottomBar(containerColor: color, screenSize: screenSize)
        ],
      ),
    );
  }
}

class LastBottomBar extends StatelessWidget {
  final Color containerColor;
  final Size screenSize;

  const LastBottomBar(
      {Key key, @required this.containerColor, @required this.screenSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                    width: 20,
                    height: 20,
                    child: InkWell(
                      onTap: () {
                        _launchSocial(
                            "https://www.facebook.com/Travel-ID-1968705690076037/",
                            "https://www.facebook.com/Travel-ID-1968705690076037/");
                      },
                      child: Image.network(
                        "assets/social_facebook.png",
                      ),
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                    width: 20,
                    height: 20,
                    child: InkWell(
                      onTap: () {
                        _launchSocial(
                            "https://www.linkedin.com/company/etravelid/?viewAsMember=true",
                            "https://www.linkedin.com/company/etravelid/?viewAsMember=true");
                      },
                      child: Image.network(
                        "assets/social_linkedin.png",
                      ),
                    )),
              ),
              // const SizedBox(
              //   width: 20,
              // ),
              // Flexible(
              //   fit: FlexFit.loose,
              //   child: Container(
              //       width: 20,
              //       height: 20,
              //       child: InkWell(
              //         onTap: () {
              //           _launchSocial("https://www.linkedin.com/feed/?trk=",
              //               "https://www.linkedin.com/feed/?trk=");
              //         },
              //         child: Image.network(
              //           "assets/social_instagram.png",
              //         ),
              //       )),
              // ),
              // const SizedBox(
              //   width: 20,
              // ),
              // Flexible(
              //   fit: FlexFit.loose,
              //   child: Container(
              //       width: 20,
              //       height: 20,
              //       child: InkWell(
              //         onTap: () {
              //           _launchSocial("https://www.linkedin.com/feed/?trk=",
              //               "https://www.linkedin.com/feed/?trk=");
              //         },
              //         child: Image.network(
              //           "assets/social_twitter.png",
              //         ),
              //       )),
              // ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: InkWell(
                  child: AutoSizeText(
                    "Privacy policy -",
                    style: AppTextStyles.mainTitleRegularWhite10,
                  ),
                  onTap: () async => await Navigator.of(context)
                      .pushNamed(PrivacyPolicyWidget.route),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: InkWell(
                  child: AutoSizeText(
                    "Terms of use",
                    style: AppTextStyles.mainTitleRegularWhite10,
                  ),
                  onTap: () async => await Navigator.of(context)
                      .pushNamed(TermsOfUseWidget.route),
                ),
              ),
            ],
          ),
          Divider(
            color: AppColors.primaryWhite,
            thickness: 1,
            indent: screenSize.width * .4,
            endIndent: screenSize.width * .4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: AutoSizeText(
                  'Copyright © 2021 | Eknon Tech OÜ',
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchSocial(String url, String fallbackUrl) async {
    // Don't use canLaunch because of fbProtocolUrl (fb://)
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
    }
  }
}

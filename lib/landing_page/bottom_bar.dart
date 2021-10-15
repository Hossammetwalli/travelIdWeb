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
      height: (screenSize.width < 350) ? 1800 : 1300,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MessageWidget(
            width: screenSize.width,
            height: 600,
          ),
          AboutUs(
            height: (screenSize.width < 350) ? 800 : 400,
            width: screenSize.width - 50,
          ),
          LastBottomBar(
            screenSize: screenSize,
            containerColor: color,
          )
        ],
      ),
    );
  }

  Container bottomBarLarge(Size screenSize, Color color) {
    return Container(
      color: color,
      height: 760,
      width: screenSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MessageWidget(
                height: 560,
                width: 430,
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
              AboutUs(
                height: 560,
                width: 430,
              ),
            ],
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
    return ResponsiveWidget.isSmallScreen(context)
        ? lastBottomBarSmall(screenSize.height, containerColor)
        : lastBottomBarLarge(screenSize.height, containerColor);
  }

  Container lastBottomBarSmall(double _width, Color color) {
    return Container(
      height: (screenSize.width < 350) ? 200 : 100,
      width: _width - 50,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.facebook.com/",
                          "https://www.facebook.com/");
                    },
                    child: Image.network(
                      "assets/social_facebook.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_linkedin.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_instagram.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_twitter.png",
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: AutoSizeText(
                  "Privacy policy -",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
              InkWell(
                child: AutoSizeText(
                  "Terms of use",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
            ],
          ),
          Divider(
            color: AppColors.primaryWhite,
            thickness: 1,
            indent: _width * .4,
            endIndent: _width * .4,
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

  Container lastBottomBarLarge(double _width, Color color) {
    return Container(
      color: color,
      height: 100,
      width: _width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.facebook.com/",
                          "https://www.facebook.com/");
                    },
                    child: Image.network(
                      "assets/social_facebook.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_linkedin.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_instagram.png",
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      _launchSocial("https://www.linkedin.com/feed/?trk=",
                          "https://www.linkedin.com/feed/?trk=");
                    },
                    child: Image.network(
                      "assets/social_twitter.png",
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: AutoSizeText(
                  "Privacy policy -",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
              InkWell(
                child: AutoSizeText(
                  "Terms of use",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
            ],
          ),
          Divider(
            color: AppColors.primaryWhite,
            thickness: 1,
            indent: _width * .4,
            endIndent: _width * .4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Copyright © 2021 | Eknon Tech OÜ',
                style: AppTextStyles.mainTitleRegularWhite10,
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

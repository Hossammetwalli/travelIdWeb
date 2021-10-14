import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AboutUs extends StatelessWidget {
  final double width;
  final double height;

  const AboutUs({Key key, @required this.width, @required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600),
      width: ResponsiveWidget.isSmallScreen(context) ? width - 60 : width * .35,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            "Who we are",
            style: AppTextStyles.mainTitleRegularWhite10,
            minFontSize: 15,
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            ConstString.aboutContent,
            style: AppTextStyles.mainTitleRegularWhite10,
            minFontSize: 12,
          ),
          SizedBox(
            height: ResponsiveWidget.isSmallScreen(context) ? 20 : 40,
          ),
          (width < 250)
              ? Container()
              : AutoSizeText(
                  ConstString.aboutMission,
                  style: AppTextStyles.mainTitleRegularWhite10,
                  minFontSize: 12,
                ),
          const SizedBox(
            height: 20,
          ),
          (width < 300)
              ? Row(
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
                      width: 5,
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
                      width: 5,
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
                      width: 5,
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
                )
              : Row(
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
                )
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

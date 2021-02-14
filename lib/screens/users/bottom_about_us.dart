import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class AboutUs extends StatelessWidget {
  final double width;
  final double height;

  const AboutUs({Key key, @required this.width, @required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: ResponsiveWidget.isSmallScreen(context)
          ? width
          : width * .35,
      height: ResponsiveWidget.isSmallScreen(context)? 300: 550 ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SizedBox(
            height: ResponsiveWidget.isSmallScreen(context)? 20:70,
          ),
          Text(
            ConstString.about,
            style: AppTextStyles.titleWhite,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ConstString.aboutContent,
            style: AppTextStyles.contentWhite,
          ),
          SizedBox(
            height: ResponsiveWidget.isSmallScreen(context)? 20:50,
          ),
          Text(
            ConstString.aboutMission,
            style: AppTextStyles.contentWhite,
          ),
          const SizedBox(
            height: 20,
          ),
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
                      "assets/facebook.png",
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
                      "assets/linkedin.png",
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
                      "assets/instagram.png",
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
                      "assets/twitter.png",
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

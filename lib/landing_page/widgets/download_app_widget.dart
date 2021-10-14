import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class DownloadAppWidget extends StatelessWidget {
  const DownloadAppWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return (ResponsiveWidget.isLargeScreen(context))
        ? Container(
            width: (screenSize.width < 1000) ? screenSize.width : 1000,
            height: 1000,
            //  color: AppColors.lightGreyColorF7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "Coming soon",
                          style: AppTextStyles.mainTitleRegularBlue10,
                          minFontSize: 20,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     AutoSizeText(
                    //       "Everything you need to travel\nBetter - Faster - Cheaper",
                    //       style: AppTextStyles.textRegularBlackBold17,
                    //       textAlign: TextAlign.start,
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "assets/download_google.png",
                          scale: 3.5,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.network(
                          "assets/download_apple.png",
                          scale: 3.5,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "assets/travel_id_image_1.png",
                      scale: .7,
                      fit: BoxFit.fill,
                      // scale: 2,
                    ),
                  ],
                ),
              ],
            ),
          )
        //Small screen
        : Container(
            width: screenSize.width,
            //  color: AppColors.lightGreyColorF7,
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "assets/travel_id_image_1.png",
                  scale: .7,
                  fit: BoxFit.fill,
                  // scale: 2,
                ),
                AutoSizeText(
                  "Coming soon",
                  style: AppTextStyles.mainTitleRegularBlue10,
                  minFontSize: 20,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                // AutoSizeText(
                //   "Empowering people to travel\nfaster, better and cheaper",
                //   style: AppTextStyles.textRegularBlueBold17,
                //   minFontSize: 16,
                //   textAlign: TextAlign.center,
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "assets/download_google.png",
                      scale: 4,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      "assets/download_apple.png",
                      scale: 4,
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}

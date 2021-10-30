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
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Container(
                      width: 190,
                      child: AutoSizeText(
                        "Coming soon",
                        style: AppTextStyles.mainTitleRegularNavy10,
                        minFontSize: 16,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 190,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.network(
                                ConstString.downloadGoogle,
                                scale: 1,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.network(
                                ConstString.downloadApple,
                                scale: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      ConstString.travelIdImage1,
                      scale: .7,
                      fit: BoxFit.fill,
                      // scale: 2,
                    ),
                  ],
                ),
              ),
            ],
          )
        //Small screen
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                ConstString.travelIdImage1,
                scale: 1,
                fit: BoxFit.fill,
                // scale: 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Coming soon",
                    style: AppTextStyles.mainTitleRegularNavy10,
                    minFontSize: 15,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 190,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.network(
                        ConstString.downloadGoogle,
                        scale: 1,
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        ConstString.downloadApple,
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}

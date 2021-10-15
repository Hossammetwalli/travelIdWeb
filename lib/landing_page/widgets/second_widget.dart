import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return (ResponsiveWidget.isLargeScreen(context))
        ? Container(
            width: width,
            height: 850,
            // color: AppColors.primaryBlueColor,
            child: Column(
              children: [
                SizedBox(height: 200),
                Container(
                  width: 1000,
                  height: 500,
                  color: AppColors.primaryNavyColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 300,
                        constraints: BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: AutoSizeText(
                          ConstString.secondPageContent2,
                          style: AppTextStyles.mainTitleRegularWhite10,
                          minFontSize: 20,
                          strutStyle: StrutStyle(height: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "assets/first_image3.png",
                        scale: 1,
                        fit: BoxFit.fill,
                        // scale: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        :

        //Small screen
        Container(
            width: width * .85,
            height: 900,
            child: Column(
              children: [
                SizedBox(height: 200),
                Container(
                  width: width * .85,
                  height: 700,
                  color: AppColors.primaryNavyColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        constraints: BoxConstraints(
                          maxWidth: 300,
                        ),
                        child: AutoSizeText(
                          ConstString.secondPageContent2,
                          style: AppTextStyles.mainTitleRegularWhite10,
                          minFontSize: 15,
                          strutStyle: StrutStyle(height: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Image.network(
                        "assets/first_image3.png",
                        scale: 1,
                        fit: BoxFit.fill,
                        // scale: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}

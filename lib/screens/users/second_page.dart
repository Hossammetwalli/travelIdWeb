import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/screens/users/second_page_screen_small.dart';
import 'package:webapptrial/widgets/responsive.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? SecondPageScreenSmall(screenSize: screenSize)
        : PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: SecondPageScreenLarge(screenSize: screenSize),
          );
  }
}


class SecondPageScreenLarge extends StatelessWidget {
  const SecondPageScreenLarge({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1200,
          height: 1000,
          margin: const EdgeInsets.all(50),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 1000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 1,
                        child: Image.network(
                          ConstString.middleImage1,
                          fit: BoxFit.scaleDown,

                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ConstString.middleRowTitle3,
                            style: AppTextStyles.subTitleBlack,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            ConstString.middleRowContent3,
                            style: AppTextStyles.contentBlack,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      Opacity(
                        opacity: 1,
                        child: Image.network(
                          ConstString.middleImage4,
                          fit: BoxFit.scaleDown,

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: ResponsiveWidget.isMediumScreen(context) ? 2 : 1,
                child: Container(
                  height: 1000 ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ConstString.whyMiddleRow1,
                                style: AppTextStyles.titleBlack,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 2,
                        child: Opacity(
                          opacity: 1,
                          child: Image.network(
                            ConstString.middleImage5,
                            fit: BoxFit.cover,
                            scale: 1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              ConstString.middleRowTitle4,
                              style: AppTextStyles.subTitleBlack,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Expanded(
                                child: Text(
                                  ConstString.middleRowContent4,
                                  style: AppTextStyles.contentBlack,
                                  textAlign: TextAlign.justify,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 1000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 1,
                        child: Image.network(
                          ConstString.middleImage3,
                          fit: BoxFit.scaleDown,

                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ConstString.middleRowTitle2,
                            style: AppTextStyles.subTitleBlack,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            ConstString.middleRowContent2,
                            style: AppTextStyles.contentBlack,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      Opacity(
                        opacity: 1,
                        child: Image.network(
                          ConstString.middleImage2,
                          fit: BoxFit.scaleDown,
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
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/fifth_page_main.dart';
import 'package:webapptrial/widgets/responsive.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget(
      {Key key,
      @required this.title,
      @required this.image,
      @required this.description,
      @required this.width,
      @required this.height,
      @required this.clipper,
      @required this.context,
      @required this.items, this.paddingTop, this.rTopLeft, this.rBottomLeft, this.rTopRight, this.rBottomRight})
      : super(key: key);

  final String title;
  final String image;

  final String description;
  final double width, height, paddingTop, rTopLeft,rBottomLeft, rTopRight, rBottomRight ;



  final CustomClipper clipper;
  final BuildContext context;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? ClipPath(
         clipper: clipper, //
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(rTopRight),
                  bottomRight: Radius.circular(rBottomRight),
                  topLeft: Radius.circular(rTopLeft),
                  bottomLeft: Radius.circular(rBottomLeft),
                )


            ),
              margin: const EdgeInsets.only(left: 15, right: 15),
              width: width,
              child: InkWell(
                  onTap: () => showDialogFunction(
                      context,
                      title,
                      description,
                      items,
                      ResponsiveWidget.isSmallScreen(context) ? width * .9 : 700,
                       900,
                      image),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: width * .3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.network(
                              image,
                              scale: 3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 300,
                        width: width * .7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: paddingTop),
                              child: Container(
                                  width: width * .7,
                                  height: 80,
                                  child: Text(
                                    title.toUpperCase(),
                                    style: AppTextStyles.subTitleBlack,
                                  )),
                            ),
                            Container(
                                height: 100,
                                width: width * .65,
                                child: Text(
                                  description,
                                  style: AppTextStyles.contentBlack,
                                )),
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "More details...",
                                      style: AppTextStyles.contentBlue,
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
        )
        : ClipPath(
            clipper: clipper, //SideCutClipper(),
            child: Container(

              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(rTopRight),
                      bottomRight: Radius.circular(rBottomRight),
                      topLeft: Radius.circular(rTopLeft),
                  bottomLeft: Radius.circular(rBottomLeft),
                )


              ),
              child: InkWell(
                  onTap: () => showDialogFunction(
                      context,
                      title,
                      description,
                      items,
                      ResponsiveWidget.isSmallScreen(context)
                          ? width * .9
                          : 720,
                          900,
                      image),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: ResponsiveWidget.isMediumScreen(context)? 350: 300,

                        width: ResponsiveWidget.isMediumScreen(context)
                            ? width * .1
                            : 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Image.network(
                              image,
                              scale: 3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: ResponsiveWidget.isMediumScreen(context)? 350: 300,
                        width: ResponsiveWidget.isMediumScreen(context)
                            ? width * .3
                            : 400,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: paddingTop),
                              child: Container(
                                  width: ResponsiveWidget.isMediumScreen(context)
                                      ? width * .3
                                      : 300,
                                  height: ResponsiveWidget.isMediumScreen(context)? 60: 70,

                                  child: Text(
                                    title.toUpperCase(),
                                    style: AppTextStyles.subTitleBlack, textAlign: TextAlign.center,
                                  )),
                            ),
                            ResponsiveWidget.isMediumScreen(context)? const SizedBox(height: 10): const SizedBox(height: 30),
                            Container(
                                height: ResponsiveWidget.isMediumScreen(context)? 150: 90,
                                padding: EdgeInsets.only(right: 30),
                                child: Text(
                                  description,
                                  style: AppTextStyles.contentBlack,
                                  textAlign: TextAlign.start,
                                )),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Text(
                                      "More details...",
                                      style: AppTextStyles.contentBlue,
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          );
  }
}

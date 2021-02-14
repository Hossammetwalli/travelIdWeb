import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/why_travelid_largescreen.dart';
import 'package:webapptrial/screens/users/why_travelid_smallscreen.dart';
import 'package:webapptrial/widgets/responsive.dart';

class WhyTravelID extends StatefulWidget {
  @override
  _WhyTravelIDState createState() => _WhyTravelIDState();
}

class _WhyTravelIDState extends State<WhyTravelID> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return ResponsiveWidget.isSmallScreen(context)
        ? WhyTravelIDSmall(
      height: _height,
      width: _width,
    ):
    PreferredSize(
            preferredSize: Size(_width, 1000),
            child: WhyTravelIDLarge(
              height: _height,
              width: _width,
            ),
          );

  }
}

showDialogFunctionSmall(
  BuildContext context,
  String title,
  String description,
  List<String> items,
  double dialogWidth,
  double dialogHeight,
  String imageUrl,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.whiteColor,
            ),
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            height: dialogHeight,
            width: dialogWidth,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.network(
                          "assets/feature/arrow.png",
                          scale: 3,
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            imageUrl,
                            width: 250,
                            height: 250,
                          )),
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            "assets/feature/arrow1.png",
                            scale: 3,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: dialogWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(title.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: AppTextStyles.headlineBlue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: dialogWidth,
                    height: 120,
                    child: Text(
                      description,
                      style: AppTextStyles.middleComment,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: dialogWidth,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Use your eTRAVELER iD to:",
                          style: AppTextStyles.subHeadlineBlue,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: dialogWidth,
                          height: 170,
                          child: ListView.builder(
                            itemCount: items.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: AppColors.dashboardColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Text(
                                    items[index].toString(),
                                    style: AppTextStyles.mainContentBlack,
                                  )),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';



class BusinessThirdPageLarge extends StatelessWidget {
  const BusinessThirdPageLarge({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: 800,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,

            //   gradient: AppColors.colorGradientBusiness
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("How it works?"),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                        color: AppColors.lightBlueColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.navyColor,
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0, 3),
                          )

                        ]
                    ),

                  ),
                  Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                        color: AppColors.lightBlueColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.navyColor,
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0, 3),
                          )

                        ]
                    ),
                  ),
                  Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                        color: AppColors.lightBlueColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.navyColor,
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0, 3),
                          )

                        ]
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),



      ],
    );
  }
}

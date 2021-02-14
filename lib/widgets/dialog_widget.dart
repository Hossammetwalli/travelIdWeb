import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/responsive.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    Key key,
    @required this.width,
    @required this.height,
  @required this.onTap,
  @required this.title,
  @required this.icon, this.iconIsRight,
  }) :  super(key: key);

  final double width;
  final double height;
  final Function onTap;
  final String title;
  final IconData icon;
  final bool iconIsRight;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)?
    InkWell(
        onTap: onTap,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  color: AppColors.lightGreyColor

              ),
              child: Icon(
                icon,
                size: 50,
                color: AppColors.darkGreenColor,
              ),
            ),
            SizedBox(width: 20,),
            Container(
              width: width *.5 ,
              height: height *.2,
              // margin: const EdgeInsets.only(
              //   right: 10,
              //   bottom: 20,
              // ),
              decoration:
              BoxDecoration(
               // color: Colors.indigo[900],
                //boxShadow: [  AppColors.appBoxShadow, ]
              ),
              child: Column(
                children: [
                 Text(
                    title,
                    style: AppTextStyles.whyDialogTitleScr,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),





          ],
        )
    ):


      InkWell(
      onTap: onTap,
      child:    iconIsRight == true ?
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          width: ResponsiveWidget.isMediumScreen(context)? 70 : 100, height: ResponsiveWidget.isMediumScreen(context)? 70 : 100,
            decoration: BoxDecoration(

                shape: BoxShape.circle,
                color: AppColors.darkGreenColor

            ),
            child: Icon(
              icon,
              size: 50,
              color: AppColors.whiteColorTwo,
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: width * .2,
            height: height * .2,
            // margin: const EdgeInsets.only(
            //   right: 10,
            //   bottom: 20,
            // ),
            decoration:
            BoxDecoration(
                //color: Colors.indigo[900],
                //boxShadow: [  AppColors.appBoxShadow, ]
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: AppTextStyles.whyDialogTitleScr,
                  textAlign: iconIsRight == true ? TextAlign.start: TextAlign.end,
                )
              ],
            ),
          ),

        ],
      ):
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: width * .2,
            height: height * .2,
            // margin: const EdgeInsets.only(
            //   right: 10,
            //   bottom: 20,
            // ),
            decoration:
            BoxDecoration(
             // color: Colors.indigo[900],
              //boxShadow: [  AppColors.appBoxShadow, ]
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: AppTextStyles.whyDialogTitleScr,
                  textAlign: iconIsRight == true ? TextAlign.start: TextAlign.end,
                )
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: ResponsiveWidget.isMediumScreen(context)? 70 : 100, height: ResponsiveWidget.isMediumScreen(context)? 70 : 100,
            decoration: BoxDecoration(

                shape: BoxShape.circle,
                color: AppColors.darkGreenColor

            ),
            child: Icon(
              icon,
              size: 50,
              color: AppColors.whiteColorTwo,
            ),
          ),



        ],
      )
    );
  }
}
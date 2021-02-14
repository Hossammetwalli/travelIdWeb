import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveler_id/styles/colors.dart';
import 'package:traveler_id/styles/text_style_constant.dart';





// This widget created for the custom dialog in the home view page

class CustomDialog extends StatelessWidget {
  final String title,
      description,
      primaryButtonText,

      secondaryButtonText,
      secondaryButtonRoute;

  const CustomDialog(
      {Key key,
      @required this.title,
      @required this.description,
      @required this.primaryButtonText,

      this.secondaryButtonText,
      this.secondaryButtonRoute})
      : super(key: key);

 // static const double padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  // BoxShadow(
                  //   color: AppColors.iconColorBlended,
                  //   blurRadius: 5.0,
                  //   offset: const Offset(0.0, 2.0),
                  // ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                AutoSizeText(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.titlePrimary,
                ),
                SizedBox(
                  height: 20.0,
                ),
                AutoSizeText(
                  description,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.titlePrimary,
                ),
                SizedBox(
                  height: 24.0,
                ),
                RaisedButton(
                    color: AppColors.primaryColorBlended,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: AutoSizeText(
                      primaryButtonText,
                      maxLines: 1,
                      style: AppTextStyles.titleBackgroundColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();

                    }),
                SizedBox(height: 20.0),
                AutoSizeText(secondaryButtonText, style: AppTextStyles.subtitlePrimary,),
                showSecondaryButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showSecondaryButton(BuildContext context) {
   if(secondaryButtonRoute != null && secondaryButtonText !=null){
     return RaisedButton(
       color: AppColors.primaryColorBlended,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30.0),),
       child: AutoSizeText(
         secondaryButtonText,
         maxLines: 1,
         style: AppTextStyles.titleBackgroundColor,
       ),
       onPressed: () {
         Navigator.of(context).pop();
         Navigator.of(context).pushReplacementNamed(secondaryButtonRoute);
       },
     );
   } else{
     return SizedBox(height: 10.0,);
   }
  }
}

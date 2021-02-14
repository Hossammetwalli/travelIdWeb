import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/subscription_dialog.dart';




class Subscription extends StatefulWidget {
  final double height;
  final double width;

  const Subscription({Key key, this.height, this.width}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  TextEditingController emailTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
         color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30), topLeft: Radius.circular(30),bottomLeft: Radius.circular(30), ),
         // border: Border.all(color: Colors.black),

          boxShadow: [
            BoxShadow(
                color: AppColors.purpleColor, offset: Offset(0, 1 ), blurRadius: 10, ),
         ]

      ),
      child: FlatButton(
        color: AppColors.sBlueColor,
        hoverColor: AppColors.navyColor,
        onPressed: (){
          showDialog(
                    context: context,
                    builder: (context) => SubscriptionDialog(),
                  );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(ConstString.emailSendButton,
            style: AppTextStyles.mainContentWhite
        ),
      ),



    );
  }
}

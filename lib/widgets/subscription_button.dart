import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/subscription_dialog.dart';

class SubscriptionButton extends StatefulWidget {
  final double height;
  final double width;

  const SubscriptionButton({Key key, this.height, this.width})
      : super(key: key);

  @override
  _SubscriptionButtonState createState() => _SubscriptionButtonState();
}

class _SubscriptionButtonState extends State<SubscriptionButton> {
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          // border: Border.all(color: Colors.black),

          boxShadow: [
            BoxShadow(
              color: AppColors.purpleColor,
              offset: Offset(0, 1),
              blurRadius: 10,
            ),
          ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.navyColor,
          onPrimary: AppColors.sBlueColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SubscriptionDialog(),
          );
        },
        child: Text(ConstString.emailSendButton,
            style: AppTextStyles.contentWhite),
      ),
    );
  }
}

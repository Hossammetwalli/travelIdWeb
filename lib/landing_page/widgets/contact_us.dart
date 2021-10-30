import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class ContactUs extends StatelessWidget {
  static const String route = '/contactUs';

  const ContactUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              ConstString.contactusBackground,
            ),
            AutoSizeText(
              "Contact Us",
              style: AppTextStyles.mainTitleRegularNavy10,
              minFontSize: 30,
            ),
            MessageWidget(
              width: 600,
            ),
          ],
        ),
      ),
    );
  }
}

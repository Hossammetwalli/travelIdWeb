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
    return
        //Small screen
        Column(
      children: [
        Container(
          width: 700,
          height: 300,
          constraints: const BoxConstraints(maxWidth: 650),
          padding: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          child: AutoSizeText(
            ConstString.secondPageContent2,
            style: AppTextStyles.mainTitleRegularNavy10,
            minFontSize: 30,
            textAlign: TextAlign.center,
          ),
        ),
        Image.network(
          "assets/second_image1.png",
          scale: .8,
          fit: BoxFit.fill,
          // scale: 2,
        ),
        Container(
          width: 700,
          height: 300,
          alignment: Alignment.center,
          constraints: const BoxConstraints(maxWidth: 650),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: AutoSizeText(
            ConstString.whyMainTitle,
            style: AppTextStyles.mainTitleRegularNavy10,
            textAlign: TextAlign.center,
            minFontSize: 30,
          ),
        ),
      ],
    );
  }
}

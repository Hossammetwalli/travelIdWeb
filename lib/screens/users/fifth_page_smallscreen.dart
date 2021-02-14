import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/why_travelerid.dart';
import 'package:webapptrial/widgets/dialog_widget.dart';

class WhyTravelIDSmall extends StatelessWidget {
  const WhyTravelIDSmall({
    Key key,
    @required double height,
    @required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      width: _width,
      color: AppColors.purpleColor, // Colors.indigo[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                ConstString.featureTitle,
                style: AppTextStyles.subHeadlineWhite,
                textAlign: TextAlign.center,
              ))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.contactlessTitle,
                    ConstString.contactlessDesc,
                    contactlessItems,
                    _width * .9,
                    _height * .8,
                    ConstString.featureContactlessImage,
                  );
                },
                title: ConstString.contactlessTitle,
                image: ConstString.featureContactlessImage,
                description: ConstString.contactlessDesc,
                height: _height,
                width: _width * .9,
              ),
              const SizedBox(
                height: 30,
              ),
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.privacyTitle,
                    ConstString.privacyDesc,
                    secureItems,
                    _width * .9,
                    _height * .8,
                    ConstString.featureSecureImage,
                  );
                },
                title: ConstString.privacyTitle,
                image: ConstString.featureSecureImage,
                description: ConstString.privacyDesc,
                height: _height,
                width: _width * .9,
              ),
              const SizedBox(
                height: 30,
              ),
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.dealsTitle,
                    ConstString.dealsDesc,
                    dealsItems,
                    _width * .9,
                    _height * .8,
                    ConstString.featureDealsImage,
                  );
                },
                title: ConstString.dealsTitle,
                image: ConstString.featureDealsImage,
                description: ConstString.dealsDesc,
                height: _height,
                width: _width * .9,
              ),
              const SizedBox(
                height: 30,
              ),
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.messagesTitle,
                    ConstString.messagesDesc,
                    chatItems,
                    _width * .9,
                    _height * .8,
                    ConstString.featureChatImage,
                  );
                },
                title: ConstString.messagesTitle,
                image: ConstString.featureChatImage,
                description: ConstString.messagesDesc,
                height: _height,
                width: _width * .9,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final List<String> contactlessItems = [
  ConstString.contactlessContent1,
  ConstString.contactlessContent2,
  ConstString.contactlessContent3,
  ConstString.contactlessContent4,
];

final List<String> secureItems = [
  ConstString.privacyContent1,
  ConstString.privacyContent2,
  ConstString.privacyContent3,
  ConstString.privacyContent4,
  ConstString.privacyContent5,
  ConstString.privacyContent6,
];

final List<String> dealsItems = [
  ConstString.dealsContent1,
  ConstString.dealsContent2,
  ConstString.dealsContent3,
  ConstString.dealsContent4,
  ConstString.dealsContent5,
];

final List<String> chatItems = [
  ConstString.messagesContent1,
  ConstString.messagesContent2,
  ConstString.messagesContent3,
  ConstString.messagesContent4,
  ConstString.messagesContent5,
];

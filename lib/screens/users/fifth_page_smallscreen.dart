import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/dialog_widget.dart';

class FifthPageSmall extends StatelessWidget {
  const FifthPageSmall({
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
    return ClipPath(
      clipper: WaveClipperTwo(flip: true),
      child: ClipPath(
        clipper: WaveClipperTwo(reverse: true),
        child: Container(
          height: 1500,
          width: _width,
          decoration: BoxDecoration(
            gradient: AppColors.mainPageGradient
          ),
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
                    style: AppTextStyles.titleWhite,
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
                    clipper: WaveClipperTwo(),
                    paddingTop: 20,
                    rBottomLeft: 0,
                    rTopLeft: 60,
                    rTopRight: 60,
                    rBottomRight: 0,
                    context: context,
                    items: contactlessItems,
                    title: ConstString.contactlessTitle,
                    image: ConstString.featureContactlessImage,
                    description: ConstString.contactlessDesc,
                    height: _height,
                    width: _width * .9,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DialogWidget(
                    clipper: WaveClipperTwo(reverse: true),
                    paddingTop: 60,
                    rBottomLeft: 60,
                    rTopLeft: 0,
                    rTopRight: 0,
                    rBottomRight: 60,
                    context: context,
                    items: secureItems,
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
                    clipper: WaveClipperTwo(flip: true ),
                    paddingTop: 20,
                    rBottomLeft: 0,
                    rTopLeft: 60,
                    rTopRight: 60,
                    rBottomRight: 0,
                    context: context,
                    items: dealsItems,
                    title: ConstString.dealsTitle,
                    image: ConstString.featureDealsImage,
                    description: ConstString.dealsDesc,
                    height: _height,
                    width: _width * .9,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DialogWidget(
                    clipper: WaveClipperTwo(reverse: true,flip: true),
                    paddingTop: 60,
                    rBottomLeft: 60,
                    rTopLeft: 0,
                    rTopRight: 00,
                    rBottomRight: 60,
                    context: context,
                    items: chatItems,
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
        ),
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

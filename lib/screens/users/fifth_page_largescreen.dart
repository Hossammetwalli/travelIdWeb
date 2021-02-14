import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/fifth_page_smallscreen.dart';
import 'package:webapptrial/widgets/dialog_widget.dart';

class FifthPageLarge extends StatelessWidget {
  final double _height;
  final double _width;

  const FifthPageLarge({
    Key key,
    @required double height,
    @required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(flip: true),
      child: ClipPath(
        clipper: WaveClipperTwo(reverse: true),
        child: Container(
          height: 1100,
          width: _width ,

          decoration: BoxDecoration(
            gradient: AppColors.mainPageGradient
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ConstString.featureTitle,
                    style: AppTextStyles.titleWhite,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DialogWidget(
                    clipper: WaveClipperTwo(),
                    items: contactlessItems,
                    context: context,
                    title: ConstString.contactlessTitle,
                    image: ConstString.featureContactlessImage,
                    description: ConstString.contactlessDesc,
                    height: _height,
                    width: _width,
                    paddingTop: 20,
                    rBottomLeft: 0,
                    rTopLeft: 60,
                    rTopRight: 60,
                    rBottomRight: 0,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DialogWidget(
                    context: context,
                    clipper: WaveClipperTwo(flip: true),
                    items: secureItems,
                    title: ConstString.privacyTitle,
                    image: ConstString.featureSecureImage,
                    description: ConstString.privacyDesc,
                    height: _height,
                    width: _width,
                    paddingTop: 20,
                    rBottomLeft: 0,
                    rTopLeft: 60,
                    rTopRight: 60,
                    rBottomRight: 0,
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DialogWidget(

                    clipper: WaveClipperTwo(reverse: true),
                    context: context,
                    items: dealsItems,
                    title: ConstString.dealsTitle,
                    image: ConstString.featureDealsImage,
                    description: ConstString.dealsDesc,
                    height: _height,
                    width: _width,
                    paddingTop: 60,
                    rBottomLeft: 60,
                    rTopLeft: 0,
                    rTopRight: 0,
                    rBottomRight: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DialogWidget(
                    clipper: WaveClipperTwo(reverse: true, flip: true),
                    context: context,
                    items: chatItems,
                    title: ConstString.messagesTitle,
                    image: ConstString.featureChatImage,
                    description: ConstString.messagesDesc,
                    height: _height ,
                    width: _width,
                    paddingTop: 60,
                    rBottomLeft: 60,
                    rTopLeft: 0,
                    rTopRight: 0,
                    rBottomRight: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

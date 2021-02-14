import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/why_travelerid.dart';
import 'package:webapptrial/screens/users/why_travelid_smallscreen.dart';
import 'package:webapptrial/widgets/dialog_widget.dart';

class WhyTravelIDLarge extends StatelessWidget {
  final double _height;
  final double _width;

  const WhyTravelIDLarge({
    Key key,
    @required double height,
    @required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: _width *.85,
      color: AppColors.purpleColor,
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
                style: AppTextStyles.subHeadlineWhite,
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
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.contactlessTitle,
                    ConstString.contactlessDesc,
                    contactlessItems,
                    700,
                    _height * .8,
                    ConstString.featureContactlessImage,
                  );
                },
                title: ConstString.contactlessTitle,
                image: ConstString.featureContactlessImage,
                description: ConstString.contactlessDesc,
                height: _height,
                width: _width,
              ),
              const SizedBox(
                width: 50,
              ),
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.privacyTitle,
                    ConstString.privacyDesc,
                    secureItems,
                    700,
                    _height * .8,
                    ConstString.featureSecureImage,
                  );
                },
                title: ConstString.privacyTitle,
                image: ConstString.featureSecureImage,
                description: ConstString.privacyDesc,
                height: _height,
                width: _width,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.dealsTitle,
                    ConstString.dealsDesc,
                    dealsItems,
                    700,
                    _height * .8,
                    ConstString.featureDealsImage,
                  );
                },
                title: ConstString.dealsTitle,
                image: ConstString.featureDealsImage,
                description: ConstString.dealsDesc,
                height: _height,
                width: _width,
              ),
              const SizedBox(
                width: 50,
              ),
              DialogWidget(
                onTap: () {
                  showDialogFunctionSmall(
                    context,
                    ConstString.messagesTitle,
                    ConstString.messagesDesc,
                    chatItems,
                    700,
                    _height * .8,
                    ConstString.featureChatImage,
                  );
                },
                title: ConstString.messagesTitle,
                image: ConstString.featureChatImage,
                description: ConstString.messagesDesc,
                height: _height,
                width: _width,
              ),
            ],
          )
        ],
      ),
    );
  }
}

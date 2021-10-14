import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class BottomBar extends StatelessWidget {
  static const String route = '/contact';

  final Color containerColor;

  const BottomBar({Key key, @required this.containerColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return ResponsiveWidget.isSmallScreen(context)
        ? bottomBarSmall(_height, _width, containerColor)
        : bottomBarLarge(_height, _width, containerColor);
  }

  Container bottomBarSmall(double _height, double _width, Color color) {
    return Container(
      height: 1000,
      color: color,
      child: (_width < 380)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MessageWidget(
                  width: _width,
                  height: _height,
                ),
                InkWell(
                  child: AutoSizeText(
                    "Privacy policy",
                    style: AppTextStyles.mainTitleRegularWhite10,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: AutoSizeText(
                    "Terms of use",
                    style: AppTextStyles.mainTitleRegularWhite10,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: AppColors.primaryWhite,
                  thickness: 1,
                  indent: _width * .4,
                  endIndent: _width * .4,
                ),
                AutoSizeText(
                  'Copyright © 2021\nEknon Tech OÜ',
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    MessageWidget(
                      width: _width,
                      height: _height,
                    ),
                    AboutUs(width: _width, height: _height),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: AutoSizeText(
                        "Privacy policy",
                        style: AppTextStyles.mainTitleRegularWhite10,
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: AutoSizeText(
                        "Terms of use",
                        style: AppTextStyles.mainTitleRegularWhite10,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Divider(
                  color: AppColors.primaryWhite,
                  thickness: 1,
                  indent: _width * .4,
                  endIndent: _width * .4,
                ),
                AutoSizeText(
                  'Copyright © 2021 | Eknon Tech OÜ',
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
              ],
            ),
    );
  }

  Container bottomBarLarge(double _height, double _width, Color color) {
    return Container(
      color: color,
      height: 675,
      width: _width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MessageWidget(
                height: _height,
                width: _width,
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                color: Colors.blueGrey,
                width: 2,
                height: 300,
              ),
              const SizedBox(
                width: 30,
              ),
              AboutUs(
                height: _height,
                width: _width,
              ),
            ],
          ),
          AutoSizeText(
            'Copyright © 2021 | Eknon Tech OÜ',
            style: AppTextStyles.mainTitleRegularWhite10,
          ),
          Divider(
            color: AppColors.primaryWhite,
            thickness: 1,
            indent: _width * .4,
            endIndent: _width * .4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: AutoSizeText(
                  "Privacy policy",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: AutoSizeText(
                  "Terms of use",
                  style: AppTextStyles.mainTitleRegularWhite10,
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

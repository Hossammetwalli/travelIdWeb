import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/screens/users/bottom_about_us.dart';
import 'package:webapptrial/screens/users/bottom_message.dart';
import 'package:webapptrial/widgets/responsive.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return ResponsiveWidget.isSmallScreen(context)
        ? ClipPath(
        clipper: WaveClipperTwo(reverse: true,flip: true),
        child: bottomBarSmall(_height, _width))
        : PreferredSize(
            preferredSize: Size(_width, 1000),
            child: bottomBarLarge(_height, _width),
          );
  }

  Container bottomBarSmall(double _height, double _width) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          gradient: AppColors.mainPageGradient
      ),
      height:  1100,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: Column(
              children: [
                MessageWidget(
                  width: _width,
                  height: _height,
                ),
                const SizedBox(
                  height: 20,
                ),
                AboutUs(width: _width, height: _height),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              width: double.maxFinite,
              height: 2,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Copyright © 2021 | eknon Tech OÜ',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Container bottomBarLarge(double _height, double _width) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: AppColors.mainPageGradient
      ),
      height: 800,
      width: _width,

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MessageWidget(
                  height: _height,
                  width: _width,
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blueGrey,
              width: double.maxFinite,
              height: 2,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Copyright © 2021 | eknon Tech OÜ',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/screens/users/bottom_large%20_screen.dart';
import 'package:webapptrial/screens/users/bottom_small_screen.dart';
import 'package:webapptrial/widgets/responsive.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return ResponsiveWidget.isLargeScreen(context)
        ? PreferredSize(
      preferredSize: Size(_width, 1000),
      child: BottomLargeScreen(width: _width, height: _height,),
    ): BottomSmallScreen( height: _height,width: _width);

  }


 }
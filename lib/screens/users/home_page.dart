import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/screens/users/bottom_bar.dart';
import 'package:webapptrial/screens/users/third_screen.dart';
import 'package:webapptrial/screens/users/six_screen.dart';
import 'package:webapptrial/screens/users/fourth_screen.dart';
import 'package:webapptrial/screens/users/landing_page_large.dart';
import 'package:webapptrial/screens/users/landing_page_small.dart';
import 'package:webapptrial/screens/users/second_page.dart';
import 'package:webapptrial/screens/users/fifth_page_main.dart';
import 'package:webapptrial/widgets/explore_drawer.dart';
import 'package:webapptrial/widgets/responsive.dart';
import 'package:webapptrial/widgets/top_bar_contents.dart';
import 'package:webapptrial/widgets/web_scrollbar.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context) ||  ResponsiveWidget.isMediumScreen(context)
          ? AppBar(
              backgroundColor: AppColors.purpleColor.withOpacity(_opacity),
              // Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              iconTheme: IconThemeData(color: AppColors.whiteColor),
              title: Image.network(
                "assets/trans_logo.png",
                scale: 4,
              ),

            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: ExploreDrawer(buttonName: "Travel Partners",),
      body: WebScrollbar(
        color: AppColors.navyColor,
        isAlwaysShown: true,
        backgroundColor: AppColors.whiteColor,
        width: 20,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              ResponsiveWidget.isLargeScreen(context)
                  ?LandingPageLarge(screenSize: screenSize)
                  : LandingPageSmall(screenSize: screenSize),

              SecondPage(screenSize: screenSize),
              ThirdPage( width: screenSize.width),
              FourthPage(),
              FifthPage(),
             SixthPage(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
 import 'package:webapptrial/screens/landing_page_large.dart';
 import 'package:webapptrial/screens/landing_page_small.dart';
import 'package:webapptrial/screens/why_travelerid.dart';
import 'package:webapptrial/widgets/bottom_bar.dart';
import 'package:webapptrial/widgets/explore_drawer.dart';
import 'package:webapptrial/widgets/middle_row_one.dart';
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
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
              AppColors.kBlue.withOpacity(_opacity),// Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              title: Image.network(
                "assets/trans_logo.png",

                scale: 4,
              ),
              actions: [
                // IconButton(
                //   icon: Icon(Icons.brightness_6_outlined),
                //   splashColor: Colors.transparent,
                //   highlightColor: Colors.transparent,
                //   onPressed: () {
                //     DynamicTheme.of(context).setBrightness(
                //         Theme.of(context).brightness == Brightness.dark
                //             ? Brightness.light
                //             : Brightness.dark);
                //     print(Theme.of(context).brightness);
                //   },
                // ),
              ],
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity, "Travel Partners"),
            ),
      drawer: ExploreDrawer(),
      body: WebScrollbar(
        color: AppColors.darkBlueColor,
        isAlwaysShown: true,
        backgroundColor: AppColors.whiteColorTwo,
        width: 20,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              ResponsiveWidget.isSmallScreen(context)
                  ?  LandingPageSmall(screenSize: screenSize)
              : LandingPageLarge(screenSize: screenSize),
              MiddleRowOne(screenSize: screenSize),
              WhyTravelID(),
              SizedBox(height: screenSize.height / 10 , child: Container(color: AppColors.backgroundColor,),),

              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }


}







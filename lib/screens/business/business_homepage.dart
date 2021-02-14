import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/screens/business/business_explore_drawer.dart';
import 'package:webapptrial/screens/business/business_landingpage_large.dart';
import 'package:webapptrial/screens/business/business_landingpage_small.dart';
import 'package:webapptrial/screens/business/business_second_page_large.dart';
import 'package:webapptrial/screens/business/business_second_page_small.dart';
import 'package:webapptrial/screens/business/business_top_bar.dart';
import 'package:webapptrial/screens/users/bottom_bar.dart';
import 'package:webapptrial/screens/users/home_page.dart';
import 'package:webapptrial/widgets/responsive.dart';
import 'package:webapptrial/widgets/web_scrollbar.dart';

class BusinessHomePage extends StatefulWidget {
  static const String route = '/business';

  @override
  _BusinessHomePageState createState() => _BusinessHomePageState();
}

class _BusinessHomePageState extends State<BusinessHomePage> {
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
      backgroundColor: AppColors.whiteColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: AppColors.purpleColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              title: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                },
                child: Image.network(
                  "assets/trans_logo.png",
                  scale: 4,
                ),
              ),

            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: BusinessTopBarContents(_opacity),
            ),
      drawer: BusinessExploreDrawer(),
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
                  ? BusinessLandingPageLarge(screenSize: screenSize):
              BusinessLandingPageSmall(screenSize: screenSize),

              ResponsiveWidget.isSmallScreen(context)?
              BusinessSecondPageSmall(screenSize: screenSize):
              BusinessSecondPageLarge(screenSize: screenSize),
            //  BusinessThirdPageLarge(screenSize: screenSize),
              BottomBar(),


            ],
          ),
        ),
      ),
    );
  }
}

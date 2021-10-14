/*
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class HomePage extends StatefulWidget {
  static const String route = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller;
  double _scrollPosition = 0;
  double _opacity = 1;

  _scrollListener() {
    setState(() {
      _scrollPosition = _controller.position.pixels;
    });
  }

  @override
  void initState() {
    _controller = ScrollController(keepScrollOffset: true);
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      extendBodyBehindAppBar: true,
      // appBar: ResponsiveWidget.isSmallScreen(context)
      //     ? AppBar(
      //         backgroundColor: AppColors.primaryBlueColor,
      //         // Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
      //         elevation: 0,
      //         centerTitle: true,
      //         iconTheme: IconThemeData(color: AppColors.primaryWhite),
      //         title: Row(
      //           children: [
      //             Image.network(
      //               "assets/logo_icon_white.png",
      //               scale: 4,
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               width: 5,
      //               height: 40,
      //               color: AppColors.primaryGreenB1,
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Image.network(
      //               "assets/logo_name_green.png",
      //               scale: 2,
      //             ),
      //           ],
      //         ),
      //       )
      //     : PreferredSize(
      //         preferredSize: Size(screenSize.width, 1000),
      //         child: TopBarContents(
      //           topBarColor: AppColors.primaryBlueColor,
      //           opacity: 1,
      //           buttonOneName: "Freelancer",
      //           buttonTwoName: "Business Partners",
      //           routeOne: HomePageFreelancer.route,
      //           routeTwo: HomePageBusiness.route,
      //         ),
      //       ),
      drawer: ExploreDrawer(
        topColor: AppColors.primaryBlueColor,
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        controller: _controller,
        hoverThickness: 15,
        showTrackOnHover: true,
        interactive: true,
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          // child: ListView(
          //   scrollDirection: Axis.vertical,
          //   shrinkWrap: true,
          //   controller: _controller,
          //   physics: ClampingScrollPhysics(),
          //   children: [
          //     LandingPageLarge(screenSize: screenSize),
          //     MultipleItemDemo(),
          //     SecondWidget(
          //       screenSize: screenSize,
          //     ),
          //     WhyTravelIdWidget(
          //       screenSize: screenSize,
          //     ),
          //     DownloadAppWidget(screenSize: screenSize),
          //     BottomBar(
          //       containerColor: AppColors.primaryBlueColor,
          //     ),
          //   ],
          // ),

          child: CustomScrollView(
            //  controller: _controller,
            shrinkWrap: true,

            physics: ClampingScrollPhysics(),
            slivers: [
              ResponsiveWidget.isSmallScreen(context)
                  ? SliverAppBar(
                      backgroundColor: AppColors.primaryBlueColor,
                      // Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
                      elevation: 0,
                      centerTitle: true,
                      iconTheme: IconThemeData(color: AppColors.primaryWhite),
                      title: Row(
                        children: [
                          Image.network(
                            "assets/logo_icon_white.png",
                            scale: 4,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 5,
                            height: 40,
                            color: AppColors.primaryGreenB1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.network(
                            "assets/logo_name_green.png",
                            scale: 2,
                          ),
                        ],
                      ),
                    )
                  : SliverToBoxAdapter(
                      child: TopBarContents(
                        topBarColor: AppColors.primaryBlueColor,
                        opacity: 1,
                        buttonOneName: "Freelancer",
                        buttonTwoName: "Business Partners",
                        routeOne: HomePageFreelancer.route,
                        routeTwo: HomePageBusiness.route,
                      ),
                    ),
              SliverList(
                delegate: SliverChildListDelegate([
                  LandingPageLarge(screenSize: screenSize),
                  MultipleItemDemo(),
                  SecondWidget(
                    screenSize: screenSize,
                  ),
                  WhyTravelIdWidget(
                    screenSize: screenSize,
                  ),
                  DownloadAppWidget(screenSize: screenSize),
                  BottomBar(
                    containerColor: AppColors.primaryBlueColor,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 */

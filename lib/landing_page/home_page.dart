import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/landing_page/widgets/multiple_carsoul_widget.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class HomePage extends StatefulWidget {
  static const String route = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollPosition = 0;
  double _opacity = 0;
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0);

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    //  _scrollController.addListener(_scrollListener);
    // if (!_scrollController.hasClients) {
    //   Future.delayed(Duration(milliseconds: 50), () {
    //     _scrollController?.jumpTo(_scrollController.position.minScrollExtent);
    //   });
    // }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController,
      hoverThickness: 15,
      thickness: 15,
      // showTrackOnHover: true,
      interactive: true,
      radius: Radius.zero,
      child: Scaffold(
        backgroundColor: AppColors.primaryWhite,
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor:
                    AppColors.primaryBlueColor.withOpacity(_opacity),
                elevation: 0,
                centerTitle: true,
                iconTheme: IconThemeData(color: AppColors.primaryWhite),
                title: (screenSize.width < 300)
                    ? Row(
                        children: [
                          Image.network(
                            "assets/logo_icon_white.png",
                            scale: 10,
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Image.network(
                            "assets/logo_icon_white.png",
                            scale: 4,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 5,
                            height: 40,
                            color: AppColors.primaryGreenB1,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.network(
                            "assets/logo_name_green.png",
                            scale: 2,
                          ),
                        ],
                      ),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: TopBarContents(
                  topBarColor: AppColors.primaryBlueColor,
                  opacity: _opacity,
                  buttonOneName: "Home",
                  buttonTwoName: "Business Partners",
                  onPressOne: () async =>
                      await Navigator.of(context).pushNamed(HomePage.route),
                  onPressTwo: () async =>
                      Navigator.of(context).pushNamed(HomePageBusiness.route),
                ),
              ),
        drawer: ExploreDrawer(
          topColor: AppColors.primaryBlueColor,
          width: screenSize.width,
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          padding: const EdgeInsets.only(right: 15),
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              LandingPageLarge(screenSize: screenSize),
              // MultipleItemDemo(),
              MultipleItemFreeLancer(
                screenSize: screenSize,
              ),
              SecondWidget(
                screenSize: screenSize,
              ),
              WhyTravelIdWidget(
                screenSize: screenSize,
              ),
              const SizedBox(
                height: 100,
              ),
              DownloadAppWidget(screenSize: screenSize),
              const SizedBox(
                height: 100,
              ),
              BottomBar(
                containerColor: AppColors.primaryBlueColor,
                screenSize: screenSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

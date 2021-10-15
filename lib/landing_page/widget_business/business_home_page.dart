import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class HomePageBusiness extends StatefulWidget {
  static const String route = '/business';

  @override
  _HomePageBusinessState createState() => _HomePageBusinessState();
}

class _HomePageBusinessState extends State<HomePageBusiness> {
  double _scrollPosition = 0;
  double _opacity = 1;
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
    _scrollController.addListener(_scrollListener);
    if (!_scrollController.hasClients) {
      Future.delayed(Duration(milliseconds: 50), () {
        _scrollController?.jumpTo(_scrollController.position.minScrollExtent);
      });
    }
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
      showTrackOnHover: true,
      interactive: true,
      child: Scaffold(
        backgroundColor: AppColors.primaryWhite,
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: AppColors.primaryNavyColor,
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
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: TopBarContents(
                  topBarColor: AppColors.primaryNavyColor,
                  opacity: 1,
                  buttonOneName: "Home Page",
                  buttonTwoName: "Business Login",
                  onPressOne: () async {
                    await Navigator.of(context).pushNamed(HomePage.route);
                  },
                  onPressTwo: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => BusinessSignInView(),
                    );
                  },
                ),
              ),
        drawer: ExploreDrawer(
          topColor: AppColors.primaryNavyColor,
          width: screenSize.width,
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          padding: EdgeInsets.only(right: 15),
          physics: ClampingScrollPhysics(),
          child: Column(children: [
            LandingPageBusiness(screenSize: screenSize),
            BusinessWhyTravelIdWidget(screenSize: screenSize),
            BottomBar(
              containerColor: AppColors.primaryNavyColor,
              screenSize: screenSize,
            ),
          ]),
        ),
      ),
    );
  }
}

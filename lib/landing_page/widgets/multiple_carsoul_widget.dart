import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class TestCoreText {
  String text, image;

  TestCoreText(this.text, this.image);
}

List<TestCoreText> serviceName = carouselsData
    .map((item) => TestCoreText(item['text'], item['image']))
    .toList();

var carouselsData = [
  {"text": "Flights & Airlines", "image": ConstString.flightImage},
  {"text": "Concierge Services", "image": ConstString.conciergeImage},
  {"text": "Holiday Packages", "image": ConstString.packages},
  {"text": "Lodging & Hotels", "image": ConstString.hotelImage},
  {"text": "Problems Solving", "image": ConstString.problemSolvingImage},
  {"text": "Camping & Activities", "image": ConstString.activitiesImage},
  {"text": "Advisors & Planners", "image": ConstString.planningImage},
  {"text": "Corporate & Business", "image": ConstString.corporateImage},
  {"text": "Groups & Mice", "image": ConstString.groupsImage},
  {"text": "Family services", "image": ConstString.familyServicesImage},
  {"text": "Personal Shopping", "image": ConstString.shoppingImage},
  {"text": "Food & Beverage", "image": ConstString.foodImage},
  {"text": "Local Transportation", "image": ConstString.driverImage},
  {"text": "Housekeeping", "image": ConstString.houseKeepingImage},
  {"text": "Hourly jobs", "image": ConstString.hourlyJobsImage},
  {"text": "Virtual travel services", "image": ConstString.virtualImage},
  {"text": "Remote Work", "image": ConstString.remoteImage},
  {"text": "Other", "image": ConstString.othersImage},
  {"text": "Parties & Events", "image": ConstString.eventsImage},
  {"text": "Luxury Services", "image": ConstString.luxuryImage},
];

class MultipleItemFreeLancer extends StatefulWidget {
  final Size screenSize;

  const MultipleItemFreeLancer({Key key, this.screenSize}) : super(key: key);

  @override
  State<MultipleItemFreeLancer> createState() => _MultipleItemFreeLancerState();
}

class _MultipleItemFreeLancerState extends State<MultipleItemFreeLancer> {
  // Scroll controller for carousel
  InfiniteScrollController _controller;

  // Maintain current index of carousel
  int _selectedIndex = 0;

  // Width of each item

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 700,
          height: 300,
          constraints: const BoxConstraints(maxWidth: 650),
          padding: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          child: AutoSizeText(
            ConstString.secondPageContent1,
            style: AppTextStyles.mainTitleRegularNavy10,
            textAlign: TextAlign.center,
            minFontSize: 30,
          ),
        ),
        const SizedBox(height: 20),
        (widget.screenSize.width < 270)
            ? Container()
            : SizedBox(
                height: (widget.screenSize.width <= 500) ? 150 : 270,
                child: InfiniteCarousel.builder(
                  // key: _abcKey,
                  anchor: 0.0,
                  center: true,
                  velocityFactor: 0.8,
                  loop: true,
                  physics: const InfiniteScrollPhysics(),

                  itemExtent: (widget.screenSize.width <= 500) ? 250 : 450,
                  itemCount: serviceName.length,
                  controller: _controller,
                  onIndexChanged: (index) {
                    if (_selectedIndex != index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }
                  },
                  itemBuilder: (context, itemIndex, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          _controller.animateToItem(realIndex);
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: kElevationToShadow[2],
                            image: DecorationImage(
                              image: NetworkImage(
                                serviceName[itemIndex].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: (widget.screenSize.width <= 500) ? 250 : 450,
                            height: 35,
                            color: AppColors.primaryNavyColor,
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              serviceName[itemIndex].text,
                              style: AppTextStyles.mainTitleRegularWhite10,
                              minFontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}

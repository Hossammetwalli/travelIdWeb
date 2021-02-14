import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/business/business_homepage.dart';
import 'package:webapptrial/widgets/shapes.dart';




class TopBarContents extends StatefulWidget {
  final double opacity;


  TopBarContents(this.opacity,);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width , 1000),
      child: Container(
        color: AppColors.lightBlueColor.withOpacity(widget.opacity),

        child: Padding(
          padding:  EdgeInsets.only(


              // left: screenSize.width <= 1500 ? 200 : 400,
              // right: screenSize.width <= 1500? 200 : 400,
              top: 30, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "assets/trans_logo.png",

                scale: 3,
              ),

              Container(
                width: 180,

                child: FlatButton(
                  color: AppColors.navyColor,
                  hoverColor: AppColors.sBlueColor,
                  onPressed: () {
                    // print(screenSize.width);
                    // print(screenSize.height);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShapesScreen()),
                    );


                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(

                    padding: const EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: Text(
                      "Shapes",
                      style: AppTextStyles.contentWhite,
                    ),
                  ),
                ),
              ),

              Container(
                width: 180,

                child: FlatButton(
                  color: Colors.transparent,
                  hoverColor: AppColors.sBlueColor,
                  onPressed: () {


                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusinessHomePage()),
                    );


                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(

                    padding: const EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: Text(
                      "Travel Partners",
                      style: AppTextStyles.contentWhite,
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

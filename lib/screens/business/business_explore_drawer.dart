import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/home_page.dart';




class BusinessExploreDrawer extends StatefulWidget {


  @override
  _BusinessExploreDrawerState createState() => _BusinessExploreDrawerState();
}

class _BusinessExploreDrawerState extends State<BusinessExploreDrawer> {


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const  SizedBox(height: 50,),

              FlatButton(
                color: AppColors.navyColor,
                hoverColor: AppColors.sBlueColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);


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
                   "Test",
                    style: AppTextStyles.contentWhite,
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

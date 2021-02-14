import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';




class ExploreDrawer extends StatefulWidget {
  final String buttonName;

  const ExploreDrawer({Key key, this.buttonName}) : super(key: key);


  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {

  TextEditingController textControllerEmail;


  @override
  Widget build(BuildContext context) {
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
              Container(
                width: double.maxFinite,

                child: FlatButton(
                  color: AppColors.navyColor,
                  hoverColor: AppColors.sBlueColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/business');


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
                      widget.buttonName,
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

import 'package:flutter/material.dart';
import 'package:webapptrial/admin/admin_login_screen.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/screens/users/home_page.dart';

class BusinessTopBarContents extends StatefulWidget {
  final double opacity;

  BusinessTopBarContents(this.opacity);

  @override
  _BusinessTopBarContentsState createState() => _BusinessTopBarContentsState();
}

class _BusinessTopBarContentsState extends State<BusinessTopBarContents> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: AppColors.lightPurpleColor.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Image.network(
                  "assets/trans_logo.png",
                  scale: 3,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    child: FlatButton(
                      color: Colors.transparent,
                      hoverColor: AppColors.sBlueColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
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
                          "Home",
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
                        showDialog(
                          context: context,
                          builder: (context) => AdminSignInView(),
                        );

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AdminSignInView()),
                        // );
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
                          "Business Login",
                          style: AppTextStyles.contentWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

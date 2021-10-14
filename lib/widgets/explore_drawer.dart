import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class ExploreDrawer extends StatelessWidget {
  final Color topColor;

  const ExploreDrawer({
    Key key,
    @required this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: topColor,
            ),
            child: Row(
              children: [
                Image.network(
                  "assets/logo_icon_white.png",
                  scale: 2,
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
                  scale: 1.5,
                ),
              ],
            ),
          ),
          ListTile(
            title: AutoSizeText(
              "Home Page",
              style: AppTextStyles.mainTitleRegularNavy10,
              minFontSize: 12,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/homePage');
            },
            leading: Icon(
              Icons.workspaces_filled,
              color: AppColors.primaryGreenB1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/business');
            },
            title: AutoSizeText(
              "Business Partners",
              style: AppTextStyles.mainTitleRegularNavy10,
              minFontSize: 12,
            ),
            leading: Icon(
              Icons.add_business,
              color: AppColors.primaryGreenB1,
            ),
          ),
        ],
      ),
    );
  }
}

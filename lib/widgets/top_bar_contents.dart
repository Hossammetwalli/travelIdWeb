import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/auth_dialog.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,

  ];


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: AppColors.darkBlueColor.withOpacity(widget.opacity),// Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, top: 40, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
               flex: 1,
                child: Row(
                  children: [
                    Image.network(
                      "assets/trans_logo.png",

                      scale: 4,
                    ),
                  ],
                ),
              ),

              // Text(ConstString.appTitle, style: AppTextStyles.logo),

              // Expanded(
              //   flex: 2,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //
              //       InkWell(
              //         onHover: (value) {
              //           setState(() {
              //             value
              //                 ? _isHovering[0] = true
              //                 : _isHovering[0] = false;
              //           });
              //         },
              //         onTap: () {},
              //         child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Text(
              //               ConstString.menuAbout,
              //               style: TextStyle(
              //                 color: _isHovering[0]
              //                     ? Colors.blue[200]
              //                     : Colors.white,
              //               ),
              //             ),
              //             SizedBox(height: 5),
              //             Visibility(
              //               maintainAnimation: true,
              //               maintainState: true,
              //               maintainSize: true,
              //               visible: _isHovering[0],
              //               child: Container(
              //                 height: 3,
              //                 width: 40,
              //                 color: Colors.white,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 30),
              //       InkWell(
              //         onHover: (value) {
              //           setState(() {
              //             value
              //                 ? _isHovering[1] = true
              //                 : _isHovering[1] = false;
              //           });
              //         },
              //         onTap: () {},
              //         child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Text(
              //               ConstString.menuContact,
              //               style: TextStyle(
              //                 color: _isHovering[1]
              //                     ? Colors.blue[200]
              //                     : Colors.white,
              //               ),
              //             ),
              //             SizedBox(height: 5),
              //             Visibility(
              //               maintainAnimation: true,
              //               maintainState: true,
              //               maintainSize: true,
              //               visible: _isHovering[1],
              //               child: Container(
              //                 height: 3,
              //                 width: 40,
              //                 color: Colors.white,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),


              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? _isHovering[4] = true : _isHovering[4] = false;
                        });
                      },
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AuthDialog(),
                        );
                      },

                      child: Container(
                        width: 160.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.darkBlueColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.deepPurpleColor,
                                offset: Offset(0, 1),
                                blurRadius: 10,
                              ),
                            ]),
                        child: Center(
                          child: Text(
                            ConstString.businessButton,
                            style: AppTextStyles.buttons,
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),


              IconButton(
                icon: Icon(Icons.brightness_6_outlined, size: 25,),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.white,
                onPressed: () {
                  DynamicTheme.of(context).setBrightness(
                      Theme.of(context).brightness == Brightness.dark
                          ? Brightness.light
                          : Brightness.dark);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

abstract class AppColors {

  static Color get whiteColor => const Color(0xFFFFFFFF);
  static Color get lightGreyColor => const Color(0xFFDCDCDC);
  static Color get lightYellowColor => const Color(0xFFF8E3D0).withOpacity(1);
  static Color get dashboardColor => const Color(0xFFF3802D);
  static Color get darkGreenColor => const Color(0xFF00C9DB);

  static Color get lightGreenColor => const Color(0xFF86E9FF);
  static Color get lightPurpleColor => const Color(0xFF7059EA);
  static Color get purpleColor => const Color(0xFF4905c7);
  static Color get lightBlueColor => const Color(0xFF496AE1);
  static Color get sBlueColor => const Color(0xFF1777F2);
  static Color get navyColor => const Color(0xFF100727);
  static Color get blackColor => const Color(0xFF000000);

  static Color get lightPinkColor => const Color(0xFFFF5FED);



  static const LinearGradient mainPageGradient = LinearGradient(
      colors: [ Color(0xFF496AE1),Color(0xFFB39CF6),  ],
      end: FractionalOffset.bottomRight,
      begin: FractionalOffset.topLeft,
      stops: [
        0.2,
        0.8,

        //  0.5
      ]
  );

  static const LinearGradient mainPageGradientReverse = LinearGradient(
      colors: [ Color(0xFF496AE1),Color(0xFFB39CF6),  ],
      end: FractionalOffset.topLeft,
      begin: FractionalOffset.bottomRight,
      stops: [
        0.5,
        0.8,

        //  0.5
      ]
  );





}








  const Color greenColor = Color(0xFF4BCB1F);







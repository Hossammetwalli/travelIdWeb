import 'package:flutter/material.dart';

abstract class AppColors {

  static Color get whiteColorTwo => const Color(0xFFFFFFFF);
  static Color get blueColor => const Color(0xFF373AAE);
  static Color get kBlue => const Color(0xFF4905c7);
  static Color get darkBlueColor => const Color(0xFF211551);
  static Color get lightGreenColor => const Color(0xFF50E3C2);
  static Color get darkGreenColor => const Color(0xFF00C9DB);
  static Color get greyColor => const Color(0xFFBDBDBD);
  static Color get lightGreyColor => const Color(0xFFEEF2F5);
  static Color get deepPurpleColor => const  Color(0xFF7E60FA);
  static Color get blueColorBlended => const Color(0xFF7474E2);

  static Color get redColor => const Color(0xFFD50000);
  static Color get dashboardColor => const Color(0xFFF3802D);
  static Color get whiteColor => const Color(0xFFF0F2F5);
//static Color get lightGreyColor => const Color(0xFFE8E8F3);
  static Color get backgroundColor => const Color(0xFFFAFAFA);
 // static Color get primaryColorBlended => const Color(0xFF385194);
   //static Color get secondaryBlueColor => const Color(0xFF1777F2);
    static Color get navyColor => const Color(0xFF100727);
    static Color get darkBlack => const Color(0xff21212b);
   static Color get greenColor => const Color(0xFF339933);
  static Color get skyBlueColor => const Color(0xFF8591B0);







  static LinearGradient get backGroundColor => LinearGradient(
    colors: [  Color(0xFFF8FBFF), Color(0xFFFCFDFD), ],
  );

  static LinearGradient get buttonsGradient => LinearGradient(
    colors: [ Color(0xFFC86DD7), Color(0xFF3023AE) ],
  );

  static BoxShadow get appBoxShadow => BoxShadow(
      color: Color(0xFF6078ea).withOpacity(.3),
      offset: Offset(0, 8),
      blurRadius: 8);






}









class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color facebookBlue = Color(0xFF1777F2);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}



//const kBlueColor = Color(0xFF1E1E99);
// const kTwentyBlueColor = Color(0x201E1E99);
// const kPinkColor = Color(0xFFFF70A3);
// const kWhiteColor = Color(0xFFFFFFFF);
// const kBlackColor = Color(0xFF3A3A3A);
// const kTenBlackColor = Color(0x10000000);
// const kBackgroundColor = Color(0xFFFAFAFA);
// const kGreyColor = Color(0xff8A959E);

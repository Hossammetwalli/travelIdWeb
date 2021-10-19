import 'package:flutter/material.dart';

abstract class AppColors {
  static Color get primaryWhite => const Color(0xFFFFFFFF);

  static Color get lightGreyColorF7 => const Color(0xFFF1F5F8);

  static Color get lightGreyColorDD => const Color(0xFFDCDCDC);

  static Color get lightGreyColorE5 => const Color(0xFFE5E5E5);

  static Color get lightGreyColorD7 => const Color(0xFFD1CFD7);

  static Color get lightGreyColorC4 => const Color(0xFFC4C4C4);

  //static Color get lightGreyColorEB => const Color(0xFFE8EAEB);

  static Color get primaryGreenB1 => const Color(0xFF08DFB1);

  static Color get secondaryGreen9C => const Color(0xFF02A69C);

  //static Color get thirdGreen9C => const Color(0xFF00DA93);

  static Color get primaryBlack00 => const Color(0xFF000000);

  static Color get secondaryBlack64 => const Color(0xFF455A64);

  static Color get primaryNavyColor => const Color(0xFF090244);

  static Color get secondaryNavyColor => const Color(0xFF0B0A18);

  static Color get primaryBlueColor => const Color(0xFF2C19CE);

  static Color get yellowColor => const Color(0xFFFAEE93);

  static Color get redColor5B => const Color(0xFFE8505B);

  static Color get redColor5D => const Color(0xFFFF735D);

  static LinearGradient get buttonPrimaryColorGradient => LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF08DFB1),
            Color(0xFF08DFB1),
          ],
          stops: [
            0.0216667,
            1.0,

            //  0.5
          ]);
}

const Color greenColor = Color(0xFF4BCB1F);

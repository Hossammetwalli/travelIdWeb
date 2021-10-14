import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';

abstract class AppTextStyles {
  static TextStyle get formFontSecNavy17 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryNavyColor,
      fontSize: 17,
      letterSpacing: -0.41);

  ///Currently used//////

  ///Main fonts
  static TextStyle get mainRegularGrey18 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.lightGreyColorC4,
      fontSize: 18,
      letterSpacing: -0.41);

  static TextStyle get mainRegularSecBlack14 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryBlack64,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularWhite10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryWhite,
      fontWeight: FontWeight.w700,
      fontSize: 10,
      // height: 1.1,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularBlue10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 10,
      //height: 1.2,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularNavy10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryNavyColor,
      fontWeight: FontWeight.w700,
      fontSize: 10,
      //height: 1.2,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularGreen10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryGreenB1,
      fontWeight: FontWeight.w900,
      fontSize: 10,
      //height: 1.2,
      letterSpacing: -0.41);

  ///Heavy Font for title///

// static TextStyle get titleHeavyWhite => TextStyle(
//     fontFamily: 'SF-Pro-Text-Bold',
//     color: AppColors.primaryWhite,
//     fontSize: 10,
//     height: 1.1,
//     letterSpacing: .3);
// static TextStyle get titleHeavyBlue => TextStyle(
//     fontFamily: 'SF-Pro-Text-Bold',
//     color: AppColors.primaryBlueColor,
//     fontSize: 10,
//     letterSpacing: 0);
// static TextStyle get titleHeavyNavy2 => TextStyle(
//     fontFamily: 'SF-Pro-Text-Bold',
//     color: AppColors.secondaryNavyColor,
//     fontSize: 10,
//     letterSpacing: 0);

// static TextStyle get titleHeavyNavy => TextStyle(
//     fontFamily: 'SF-Pro-Text-Bold',
//     color: AppColors.primaryNavyColor,
//     fontSize: 10,
//     letterSpacing: 0);
// static TextStyle get titleHeavyGreen => TextStyle(
//     fontFamily: 'SF-Pro-Text-Bold',
//     color: AppColors.primaryGreenB1,
//     fontSize: 10,
//     letterSpacing: 0);
}

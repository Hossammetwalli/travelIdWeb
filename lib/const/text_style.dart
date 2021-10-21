import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';

abstract class AppTextStyles {
  static TextStyle get formFontSecNavy16 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryNavyColor,
      fontWeight: FontWeight.w600,
      fontSize: 17,
      height: 1.1,
      letterSpacing: -0.41);

  ///Currently used//////

  ///Main fonts
  static TextStyle get mainRegularGrey16 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryBlack64,
      fontWeight: FontWeight.w600,
      fontSize: 17,
      height: 1.1,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularWhite10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryWhite,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularNavy10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryNavyColor,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularPrimNavy10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryNavyColor,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.41);

  static TextStyle get mainTitleRegularGreen10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryGreenB1,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.41);

  ///Heavy Font for title///

}

/*

      static TextStyle get mainRegularSecBlack14 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.secondaryBlack64,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41);

   static TextStyle get mainTitleRegularBlue10 => TextStyle(
      fontFamily: 'SF-Pro-Text-Light',
      color: AppColors.primaryBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 10,
      //height: 1.2,
      letterSpacing: -0.41);

 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapptrial/const/colors.dart';

abstract class AppTextStyles {
  ///[Headline] Text style

  static TextStyle get mainTitle => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 75,
      fontWeight: FontWeight.w900,
      color: AppColors.whiteColor,
      wordSpacing: 2,
      letterSpacing: 0);
  static TextStyle get titleGreen => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: AppColors.darkGreenColor,
      wordSpacing: 0,
      letterSpacing: 0);
  static TextStyle get titleBlack => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor,
      wordSpacing: 0,
      letterSpacing: 0);
  static TextStyle get titleWhite => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,

      letterSpacing: 0);



  static TextStyle get subTitleWhite => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,
      height: 1,
      letterSpacing: 1);
  static TextStyle get subTitleBlack => GoogleFonts.gothicA1(
    //  fontFamily: 'Montserrat',
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor,
      height: 1,
      letterSpacing: 1);
  static TextStyle get contentWhite => GoogleFonts.gothicA1(
    //  fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteColor,
      height: 1,
      letterSpacing: 1

  );
  static TextStyle get contentWhiteTime => GoogleFonts.gothicA1(
    //  fontFamily: 'Montserrat',
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteColor,
      height: 1,
      letterSpacing: 1

  );
  static TextStyle get contentBlack => GoogleFonts.gothicA1(
      fontSize: 14,

      fontWeight: FontWeight.normal,
     // fontFamily: 'Montserrat',
      color: AppColors.blackColor,
      height: 1,
      letterSpacing: 1);
  static TextStyle get contentBlue => GoogleFonts.gothicA1(
      fontSize: 14,

      fontWeight: FontWeight.normal,
     // fontFamily: 'Montserrat',
      color: AppColors.sBlueColor,
      height: 1,
      letterSpacing: 1);
  static TextStyle get contentRed => GoogleFonts.gothicA1(
     // fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.red[700],
      height: 1,
      letterSpacing: 0);




  /// ////////////////////////////////   Business   //////////////////////////////////////////////////


  static TextStyle get businessMainTitle => GoogleFonts.gothicA1(

      fontSize: 40,
      fontWeight: FontWeight.w900,
      color: AppColors.whiteColor,
      wordSpacing: 1,
      letterSpacing: 0);

  static TextStyle get businessMainNavy => GoogleFonts.gothicA1(

      fontSize: 40,
      fontWeight: FontWeight.w900,
      color: AppColors.navyColor,
      wordSpacing: 1,
      letterSpacing: 0);


  static TextStyle get businessTitleBlackColumn => GoogleFonts.gothicA1(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
      wordSpacing: 0,
      letterSpacing: .5);
  static TextStyle get businessSubTitleBlack => GoogleFonts.gothicA1(

      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor,
      height: 2,
      letterSpacing: 0.5);
  static TextStyle get businessSubtitleNavy => GoogleFonts.gothicA1(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.sBlueColor,
      letterSpacing: 0);
  static TextStyle get businessSubtitleWhite => GoogleFonts.gothicA1(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.whiteColor,
      letterSpacing: 0);
  static TextStyle get businessContentNavy => GoogleFonts.gothicA1(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.navyColor,
      letterSpacing: 0);
  static TextStyle get businessContentWhite => GoogleFonts.gothicA1(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteColor,
      letterSpacing: 0);







}



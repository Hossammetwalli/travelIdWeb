import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/screens/landing_page_large.dart';
import 'package:webapptrial/screens/why_travelerid.dart';
import 'package:webapptrial/widgets/middle_heading.dart';


abstract class AppTextStyles {
  // title Styles



  // static TextStyle get logo => GoogleFonts.openSans(
  //     fontSize: 25,
  //     fontWeight: FontWeight.w100,
  //     color: AppColors.whiteColorTwo,
  //     letterSpacing: -.5);

  ///[LandingPageLarge] Text style

  static TextStyle get landingHeadline => GoogleFonts.openSans(
      fontSize: 45,
      fontWeight: FontWeight.w700,
      color: AppColors.whiteColorTwo,
      height: 1.2,
      letterSpacing: 0.1);

  static TextStyle get landingCore => GoogleFonts.openSans(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: AppColors.darkGreenColor,
      height: -1.5,
      letterSpacing: -0.5);

  static TextStyle get landingCore2 => GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.w100,
      color: AppColors.whiteColorTwo,
      height: 1.5,
      letterSpacing: 0.5);

  static TextStyle get landingCoreSmall => GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.whiteColorTwo,
      height: 1.2,
      letterSpacing: 0);

  static TextStyle get moto => GoogleFonts.openSans(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.darkGreenColor,
      letterSpacing: 0);

  static TextStyle get buttons => GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.whiteColorTwo,
      letterSpacing: 0);

  static TextStyle get titleGreyColor => GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.greyColor,
      letterSpacing: 0);

  ///[MiddleHeading] Text style

  static TextStyle get middleRow => GoogleFonts.openSans(
      fontSize: 25,
      fontWeight: FontWeight.w300,
      color: AppColors.darkBlueColor,

      height: 1.5,
      letterSpacing: 0);

  static TextStyle get middleRowSmall => GoogleFonts.openSans(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: AppColors.darkBlueColor,
      height: 1,
      letterSpacing: 0);


  ///[WhyTravelID] Text style

  static TextStyle get whyHeadLine => GoogleFonts.openSans(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColors.kBlue,
      letterSpacing: 1);
  static TextStyle get whyHeadLineLarge => GoogleFonts.openSans(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColors.whiteColorTwo,
      letterSpacing: 1);

  static TextStyle get whyHeadlineContent => GoogleFonts.openSans(
      fontSize: 35,
      fontWeight: FontWeight.w400,
      height: 1,
      color: AppColors.kBlue,
      letterSpacing: 0);
  static TextStyle get whyHeadlineContentLarge => GoogleFonts.openSans(
      fontSize: 35,
      fontWeight: FontWeight.w400,
      height: 1,
      color: AppColors.whiteColorTwo,
      letterSpacing: 0);

  static TextStyle get whyDialogTitle => GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1,
      color: AppColors.darkBlueColor,
      letterSpacing: 0);
  static TextStyle get whyDialogTitleScr => GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1,
      color: AppColors.whiteColorTwo,
      letterSpacing: 0);

  static TextStyle get whyDialogDesc => GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      height: 1,
      color: AppColors.darkBlueColor,
      letterSpacing: 0);

  static TextStyle get whyDialogPoints => GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      height: 1,
      color: AppColors.darkBlueColor,
      letterSpacing: 0);










  static TextStyle get slogan => GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: AppColors.lightGreenColor,
      letterSpacing: 0);




}



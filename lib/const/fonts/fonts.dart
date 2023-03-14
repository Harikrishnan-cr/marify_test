import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marrify/const/color/colors.dart';

class GoogleFont {
  static TextStyle homeTextStyle = GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: MarraifyColors.greyColor);

  static TextStyle homeScreenTileTextStyle = GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: MarraifyColors.greyColor,
      letterSpacing: 1);

  static TextStyle homeScreenTileTextStyleSecondary = GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: MarraifyColors.secondaryGrey,
      letterSpacing: 1);

  static TextStyle homeScreenTileChipText = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: MarraifyColors.primaryColorPink,
    letterSpacing: 1,
  );

  static TextStyle homeScreenFirstImage = GoogleFonts.playfairDisplay(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: 1,
  );

  static TextStyle homeScreenFirstImageSubText = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 1,
  );

  static TextStyle homeScreenFirstImageButtonStyle = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);
}

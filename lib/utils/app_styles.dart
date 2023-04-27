import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  // Colors
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color blueColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color searchColor = const Color(0xFFF4F6FD);
  static Color kakiColor = const Color(0xFFD2BDB6);
  static Color iconsColor = const Color(0xFFBFC2DF);

  // Fonts
  static TextStyle textStyle = GoogleFonts.poppins(
    fontSize: 16.0,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle = GoogleFonts.poppins(
    fontSize: 26.0,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = GoogleFonts.poppins(
    fontSize: 21.0,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = GoogleFonts.poppins(
    fontSize: 17.0,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = GoogleFonts.poppins(
    fontSize: 14.0,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}

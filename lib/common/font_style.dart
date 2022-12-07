import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  static TextStyle white25 = GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 25,
  ));
  static TextStyle white16 = GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 16,
  ));
  static TextStyle white15 =
      GoogleFonts.poppins(color: Colors.white, fontSize: 15);
  static TextStyle black15 =
      GoogleFonts.poppins(color: Colors.black, fontSize: 15);
  static TextStyle black15Bold = GoogleFonts.poppins(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle black12 =
      GoogleFonts.poppins(color: Colors.black, fontSize: 12);
  static TextStyle black18W500 = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500));
  static TextStyle grey15_700 =
      GoogleFonts.poppins(color: Colors.grey[700], fontSize: 13);
}

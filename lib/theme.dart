import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xff04ba71); //hijau cerah
Color secondaryColor = Color(0xffF1F0F2);
Color alertColor = Color(0xffED6363); //merah cerah
Color priceColor = Color(0xff177A52);
Color backgroundColor1 = Color(0xffF5F2EB); //hijau tua
Color backgroundColor2 = Color(0xffD3D2D8);
Color backgroundColor3 = Color(0xff27372E); //hijau dark
Color primaryTextColor = Color(0xff000000);
Color secondaryTextColor = Color(0xff999999);
Color subtitleColor = Color(0xff504F5E);
Color transparentColor = Colors.transparent;

// Text Hitam
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

// Text Abu-abu
TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

// Text Putih
TextStyle thirdTextStyle = GoogleFonts.poppins(
  color: backgroundColor1,
);

// Abu-abu
TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

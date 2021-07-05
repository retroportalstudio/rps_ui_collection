import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_BLACK = Colors.black;
const COLOR_GREY = Color(0xff9E9E9E);
const COLOR_WHITE = Color(0xffFFA801);
const COLOR_GREEN = Color(0xff7BB655);

TextTheme defaultText = TextTheme(
    headline1: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: GoogleFonts.nunito(color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
    bodyText2: GoogleFonts.nunito(color: COLOR_GREY, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
    subtitle1: GoogleFonts.nunito(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: GoogleFonts.nunito(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

TextTheme smallText = TextTheme(
    headline1: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: GoogleFonts.nunito(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: GoogleFonts.nunito(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
    bodyText2: GoogleFonts.nunito(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
    subtitle1: GoogleFonts.nunito(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: GoogleFonts.nunito(color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));

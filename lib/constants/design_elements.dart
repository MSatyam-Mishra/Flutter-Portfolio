import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

Color defaultTileColor = const Color.fromARGB(255, 4, 4, 10);

Color bgColor = const Color.fromARGB(255, 0, 0, 0);

/*
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color.fromARGB(255, 158, 9, 47)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

*/

BoxDecoration defaultTileDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: defaultTileColor,
);

var headerText = GoogleFonts.nunito(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 72,
        color: Color.fromARGB(255, 19, 53, 247)));

var bodyText = GoogleFonts.nunito(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color.fromARGB(255, 217, 217, 219)));

var subHeading = GoogleFonts.nunito(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 22,
        color: Color.fromARGB(255, 217, 217, 219)));

var subHeading1 = GoogleFonts.nunito(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 38,
        color: Color.fromARGB(255, 217, 217, 219)));

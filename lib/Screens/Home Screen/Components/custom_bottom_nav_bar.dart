import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customBottomNavBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "DEV :- AAYUSH PATEL",
        style: GoogleFonts.montserrat(
            fontSize: 12, fontWeight: FontWeight.bold, height: 2),
      ),
    ],
  );
}
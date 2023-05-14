import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

TextStyle robotoSmall()=> GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black);

TextStyle popinsMedium ()=> GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.bold, color: primaryLightColor);

TextStyle popinsLarge() => GoogleFonts.poppins(
    fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white);

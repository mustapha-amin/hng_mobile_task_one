import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kTextStyle(double size, {Color? color, bool? isBold}) {
  isBold ??= false;
  return GoogleFonts.lato(
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    color: color ?? Colors.black,
  );
}

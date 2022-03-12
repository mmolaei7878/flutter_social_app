import 'package:flutter/material.dart';

class MyStyle {
  static TextStyle myStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    FontStyle? fontStyle,
    double? height,
  }) =>
      TextStyle(
          fontFamily: 'POPPINS',
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height,
          fontStyle: fontStyle);
}

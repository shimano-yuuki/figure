import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';

class AppTextstyle {
  static const fontFamily = "NotoSanzJP";

  static TextStyle light(double fontSize, {Color color = MyColor.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w300);
  static TextStyle regular(double fontSize, {Color color = MyColor.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w400);

  static TextStyle medium(double fontSize, {Color color = Colors.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w500);

  static TextStyle bold(double fontSize, {Color color = MyColor.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w700);
}

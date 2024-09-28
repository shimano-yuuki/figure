import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';

class AppTextstyle {
  //fontSizeがdefaultで14変更したいときは引数で指定する。
  static const fontFamily = "NotoSanzJP";

  static TextStyle light({Color color = MyColor.black, double fontSize = 14}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w300);
  static TextStyle regular(
          {Color color = MyColor.black, double fontSize = 14}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w400);

  static TextStyle medium({Color color = Colors.black, double fontSize = 14}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w500);

  static TextStyle bold({Color color = MyColor.black, double fontSize = 14}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w700);
}

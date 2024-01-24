import 'package:dgsea/config/const/theme_const.dart';
import 'package:flutter/material.dart';

const String fontFamily = ThemeConsts.kThemeFontFamily;

TextStyle lightTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w300, fontFamily: fontFamily);

TextStyle regularTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w500, fontFamily: fontFamily);

TextStyle mediumTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w500, fontFamily: fontFamily);

TextStyle semiBoldTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w600, fontFamily: fontFamily);

TextStyle boldTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w700, fontFamily: fontFamily);

TextStyle extraBoldTextStyle({double fontSize = 14, Color? txtColor}) =>
    TextStyle(fontSize: fontSize, color: txtColor ?? ThemeConsts.kPrimaryTextColor, fontWeight: FontWeight.w800, fontFamily: fontFamily);
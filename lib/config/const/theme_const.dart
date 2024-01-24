import 'package:flutter/material.dart';

class ThemeConsts {
  static final ThemeConsts _instance = ThemeConsts._internal();

  factory ThemeConsts() {
    return _instance;
  }

  ThemeConsts._internal() {
    // initialization logic
  }

  static const String kThemeFontFamily = "Montserrat";

  static const String kAppName = "DGFERRY-Agent Booking Platform";

  static const Color kPrimaryColor = Color(0xFF0b2347);
  static const Color kWhiteTextColor = Color(0xFFffffff);
  static const Color kPrimaryTextColor = Color(0xFF4d4d4d);
  static const Color kBlackTextColor = Color(0xFF000000);
  static const Color kSecondaryTextColor = Color(0xFF666666);
  static const Color kScaffoldBackgroundColor = Colors.white;
  static const Color kGreyColor = Color(0xFF9B9B9B);
  static const Color kBlueTextColor = Color.fromRGBO(100, 181, 246, 1);

  static const Color kTextFieldBorderColor = Color(0xFFCCCCCC);
  static const Color kPrefixIconColor = Color.fromARGB(255, 203, 54, 20);
  static const Color kCancelTextColor = Color(0xFFE91224);
  static const Color kButtonOrangeColor = Color(0xFFFF6600);

  static const Color kStrokeColor = Color(0xFFE1E1E1);
  static const Color kLabelTextColor = Color(0xFF999999);
  static const Color kDividerColor = Color(0xFFCCCCCC);
  static const Color kErrorColor = Color(0xFFFF0000);
  static const Color kWhiteColor = Colors.white;
  static const Color kTransparentColor = Colors.transparent;
  static const Color kLinkBlueColor = Colors.blue;
  static const Color kNoDataFoundColor = Color(0xFF767D9B);
  static const Color kNoDataFoundDesColor = Color(0xFF8F90A2);

  static const Color kBlackColor = Color(0xFF000000);
  static const Color kGreenColor = Colors.green;
}

class ThemeStyle {
  static final ThemeStyle _instance = ThemeStyle._internal();

  factory ThemeStyle() {
    return _instance;
  }

  ThemeStyle._internal() {
    // initialization logic
  }

  static ThemeData themeData() {
    return ThemeData(
      fontFamily: ThemeConsts.kThemeFontFamily,
      scaffoldBackgroundColor: ThemeConsts.kScaffoldBackgroundColor,
      primaryColor: ThemeConsts.kPrimaryColor,
      dividerColor: ThemeConsts.kDividerColor,
      hintColor: ThemeConsts.kLabelTextColor,
      textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: ThemeConsts.kPrimaryTextColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: ThemeConsts.kThemeFontFamily,
        ),
        elevation: 2,
      ),
    );
  }

  static const TextStyle headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  final TextStyle subHeaderStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.5),
  );
}
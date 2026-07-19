import 'package:flutter/material.dart';

class CustomAppbarTheme {
  CustomAppbarTheme._();
  static int opacity = (0.5 * 255).round();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 3,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
}
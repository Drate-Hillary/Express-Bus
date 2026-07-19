import 'package:flutter/material.dart';

class CustomOutlineButtonTheme {
  CustomOutlineButtonTheme._();

  static final lightOutlineButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      side: BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 20),
      
    ),
  );
}
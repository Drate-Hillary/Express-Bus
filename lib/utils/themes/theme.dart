import 'package:express_administrator/utils/themes/custom/appbar_theme.dart';
import 'package:express_administrator/utils/themes/custom/bottomsheet_theme.dart';
import 'package:express_administrator/utils/themes/custom/checkbox_theme.dart';
import 'package:express_administrator/utils/themes/custom/elevated_button_theme.dart';
import 'package:express_administrator/utils/themes/custom/outline_button_theme.dart';
import 'package:express_administrator/utils/themes/custom/text_theme.dart';
import 'package:express_administrator/utils/themes/custom/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Color(0xFFF5F6F2),
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CustomAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CustomCheckBoxTheme.lightAppCheckBoxTheme,
    outlinedButtonTheme: CustomOutlineButtonTheme.lightOutlineButtonThemeData,
    inputDecorationTheme: TextfieldTheme.lightInputDecorationTheme,
  );
}
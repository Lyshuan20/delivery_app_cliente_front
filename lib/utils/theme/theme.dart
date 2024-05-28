import 'package:delivery_app_cliente/utils/theme/custom_themes/appBar_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/chip_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/text_field_theme.dart';
import 'package:delivery_app_cliente/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class LAppTheme {
  LAppTheme._();

  // -- Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF0CC0DF),
    textTheme: LTextTheme.lightTextTheme,
    chipTheme: LChipTheme.lightChipThemeData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: LAppBarTheme.lightAppBarTheme,
    checkboxTheme: LCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme.lightBottomSheetThemeData,    
    elevatedButtonTheme: LElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme.lightInputDecorationTheme,
  );
  
  // -- Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF0CC0DF),
    textTheme: LTextTheme.darkTextTheme,
    chipTheme: LChipTheme.darkChipThemeData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: LAppBarTheme.darkAppBarTheme,
    checkboxTheme: LCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme.darkBottomSheetThemeData,    
    elevatedButtonTheme: LElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme.darkInputDecorationTheme,
  );
}
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/text_theme.dart';

class GhostAppTheme {
  GhostAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GhostTextTheme.lightTextTheme,
    outlinedButtonTheme: GhostOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: GhostElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: GhostTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GhostTextTheme.darkTextTheme,
    outlinedButtonTheme: GhostOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: GhostElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: GhostTextFormFieldTheme.darkInputDecorationTheme,
  );
}

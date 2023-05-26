import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

//Light and dark Elevated button theme
class GhostElevatedButtonTheme {
  GhostElevatedButtonTheme._();

  //light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        foregroundColor: ghostWhiteColor,
        backgroundColor: ghostSecondaryColor,
        side: const BorderSide(
          color: ghostSecondaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: ghostButtonHeight),),
  );

  //dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        foregroundColor: ghostSecondaryColor,
        backgroundColor: ghostWhiteColor,
        side: const BorderSide(
          color: ghostSecondaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: ghostButtonHeight)),
  );
}

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';


//Light and dark outlined button theme
class GhostOutlinedButtonTheme{
  GhostOutlinedButtonTheme._();


  //light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: ghostSecondaryColor,
      side: const BorderSide(
        color: ghostSecondaryColor,
      ),
      padding:
      const EdgeInsets.symmetric(vertical: ghostButtonHeight),
    ),
  );


  //dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: ghostWhiteColor,
      side:const  BorderSide(
        color: ghostWhiteColor,
      ),
      padding:
      const EdgeInsets.symmetric(vertical: ghostButtonHeight),
    ),
  );
}
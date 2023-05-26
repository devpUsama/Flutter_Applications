import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class GhostTextFormFieldTheme {
  GhostTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: ghostSecondaryColor,
    floatingLabelStyle: TextStyle(color: ghostSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: ghostSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: ghostPrimaryColor,
    floatingLabelStyle: TextStyle(color: ghostPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: ghostPrimaryColor),
    ),
  );
}

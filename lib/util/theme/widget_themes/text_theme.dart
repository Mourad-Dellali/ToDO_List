import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: TSizes.fontSizeLg,
      fontWeight: TSizes.fontWeightMb,
      color: TColors.textPrimary

    )
  );
  static TextTheme darkTextTheme= TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: TSizes.fontSizeLg,
      fontWeight: TSizes.fontWeightMb,
      color: TDColors.textPrimary
    )
  );
}
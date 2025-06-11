import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';


class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButton= ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: TColors.button,
    foregroundColor: TColors.textPrimary,
    fixedSize: const Size(TSizes.buttonWidth, TSizes.buttonHeight),
    elevation: TSizes.buttonElevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    ),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: TSizes.fontWeightMb,
    ),
  ));
  static final darkElevatedButton= ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: TDColors.button,
    foregroundColor: TDColors.textPrimary,
    fixedSize: const Size(TSizes.buttonWidth, TSizes.buttonHeight),
    elevation: TSizes.buttonElevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    ),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: TSizes.fontWeightMb,
    ),
  ));
}
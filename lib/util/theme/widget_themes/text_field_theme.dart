import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightTextField= InputDecorationTheme(
    prefixIconColor: TColors.icon,
    suffixIconColor: TColors.icon,
    labelStyle: const TextStyle().copyWith(
      fontSize: TSizes.fontSizeSm,
      color: TColors.textPrimary
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: TSizes.fontSizeSm,
      color: TColors.textPrimary
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: TColors.textPrimary.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color: TColors.border)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color:TColors.border)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color:TColors.border)
    ),

  );
    static InputDecorationTheme darkTextField= InputDecorationTheme(
    prefixIconColor: TDColors.icon,
    suffixIconColor: TDColors.icon,
    labelStyle: const TextStyle().copyWith(
      fontSize: TSizes.fontSizeSm,
      color: TDColors.textPrimary
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: TSizes.fontSizeSm,
      color: TDColors.textPrimary
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: TDColors.textPrimary.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color: TDColors.border)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color:TDColors.border)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color:TDColors.border)
    ),
    
  );
}
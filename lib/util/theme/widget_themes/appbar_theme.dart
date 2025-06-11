import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';


class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBar=AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Color.fromARGB(255, 186, 213, 245),
    surfaceTintColor: TColors.primary,
    iconTheme: IconThemeData(color: TColors.icon,size:TSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: TSizes.fontSizeLg,color: TColors.textPrimary)

  
  );
  static const darkAppBar=AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Color.fromARGB(255, 204, 81, 91),
    surfaceTintColor: TDColors.primary,
    iconTheme: IconThemeData(color: TDColors.icon,size:TSizes.iconSm),
    titleTextStyle: TextStyle(fontSize: TSizes.fontSizeLg,color: TDColors.textPrimary)

  
  );
}
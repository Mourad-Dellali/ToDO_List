import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:demo_todo_list/util/theme/widget_themes/appbar_theme.dart';
import 'package:demo_todo_list/util/theme/widget_themes/bottomsheet_theme.dart';
import 'package:demo_todo_list/util/theme/widget_themes/checkbox_theme.dart';
import 'package:demo_todo_list/util/theme/widget_themes/elevated_button_theme.dart';
import 'package:demo_todo_list/util/theme/widget_themes/text_field_theme.dart';
import 'package:demo_todo_list/util/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';


class TAppTheme {
  TAppTheme._(); // private constructor

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    //fontFamily:
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.background,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButton,
    appBarTheme: TAppBarTheme.lightAppBar,
    checkboxTheme: TCheckBox.lightCheckboxTheme,
    bottomSheetTheme: BottomsheetTheme.lightBotoomSheet,
    inputDecorationTheme: TTextFieldTheme.lightTextField,
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    //fontFamily:
    brightness: Brightness.dark,
    primaryColor: TDColors.primary,
    scaffoldBackgroundColor: TDColors.background,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButton,
    appBarTheme: TAppBarTheme.darkAppBar,
    checkboxTheme: TCheckBox.darkCheckboxTheme,
    bottomSheetTheme: BottomsheetTheme.darkBotoomSheet,
    inputDecorationTheme: TTextFieldTheme.darkTextField,
  );
  static ThemeData sakuraTheme = ThemeData() ; // example of one of the custom themes.
}
import 'package:flutter/material.dart';

class TCheckBox{
  TCheckBox._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.blue; // Selected checkbox color
    }
    return Colors.grey.shade300; // Unselected checkbox fill
  }),
  checkColor: WidgetStateProperty.all(Colors.white), // Checkmark color
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  side: const BorderSide(color: Colors.grey),

  );
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
     fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.lightBlueAccent; // Selected checkbox color
    }
    return Colors.grey.shade700; // Unselected checkbox fill
  }),
  checkColor: WidgetStateProperty.all(Colors.black), // Checkmark color
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  side: const BorderSide(color: Colors.white70),
  );
}
import 'package:demo_todo_list/util/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomsheetTheme {
  BottomsheetTheme._();

  static final lightBotoomSheet = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.surface,
    modalBackgroundColor: TColors.surface,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16)
      )
    )
  );
  static final darkBotoomSheet = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TDColors.surface,
    modalBackgroundColor: TDColors.surface,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16)
      )
    )
  );
}
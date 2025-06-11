import 'package:demo_todo_list/pages/to_do.dart';
import 'package:demo_todo_list/util/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDo(),
      // routes: ,
      themeMode: ThemeMode.system, // light or dark can change later for it to accomodate  custom themes
      theme: TAppTheme.lightTheme, // light theme
      darkTheme: TAppTheme.darkTheme, // dark theme

    );
  }
}


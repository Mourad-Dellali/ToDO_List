

import 'package:flutter/material.dart';

class TTextfield extends StatelessWidget {
  final TextEditingController textController;
  final String textTitle;
  final int maxLines;
  const TTextfield({super.key,
  required this.textController,
  required this.textTitle,
  this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
  child: TextField(
    controller: textController,
    maxLines: maxLines,
    decoration: InputDecoration(

      labelText: textTitle,
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(),
      

    ),
  ),
);
  }
}
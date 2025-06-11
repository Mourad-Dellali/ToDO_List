import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class TodoTile extends StatelessWidget {
final String taskTitle;
final String taskDesc;
final bool taskCompleted;
final Icon? taskIcon;

final Function(bool?)? onChanged;
  const TodoTile({super.key,
  required this.taskTitle,
  required this.taskCompleted,
  required this.onChanged,
  this.taskDesc="",
  this.taskIcon});


  @override
  Widget build(BuildContext context) {
    final random = Random();
int min = 0;
int max = AvailableIcons.availableIcons.length;
int randomInt = min + random.nextInt(max - min);
    return Card(
      
      elevation: TSizes.cardElevation,
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
  ),
child: 
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    taskIcon ?? Icon(AvailableIcons.availableIcons[randomInt]),
    Column(
      children: [
        Text(taskTitle),
        Text(taskDesc)
      ],
    ),
    
    Checkbox(value: taskCompleted, onChanged: onChanged)
  ],),
),
  
        );
  }
}
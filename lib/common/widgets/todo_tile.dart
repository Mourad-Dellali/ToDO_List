import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';



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
  this.taskIcon,});


  @override
  Widget build(BuildContext context) {
    final Icon displayIcon = taskIcon ?? Icon(AvailableIcons.availableIcons[0]);
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
    displayIcon,
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
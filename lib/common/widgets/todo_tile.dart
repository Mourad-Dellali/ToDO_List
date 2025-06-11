import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:flutter/material.dart';



class TodoTile extends StatelessWidget {
final String taskTitle;
final String taskDesc;
final bool starred;
final bool taskCompleted;
final Icon? taskIcon;
final int index;
final Function(bool,int) starChanged;
  const TodoTile({super.key,
  required this.taskTitle,
  this.starred=false,
  required this.index,
  this.taskCompleted=false,
  required this.starChanged,
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
  padding: const EdgeInsets.all(20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        spacing: 20,
        children: [

        
    displayIcon,
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Text(taskTitle),
        Text(taskDesc)
      ],
    )]),
    IconButton(onPressed:() => starChanged(!starred,index), icon: starred ? Icon(Icons.star) :Icon(Icons.star_border) ,
    color: starred ? Colors.yellow : Colors.grey )
    //Checkbox(value: starred, onChanged: onChanged)
  ],),
),
  
        );
  }
}
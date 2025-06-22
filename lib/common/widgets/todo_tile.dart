import 'package:demo_todo_list/common/widgets/task_category.dart';
import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:demo_todo_list/util/constants/sizes.dart';
import 'package:demo_todo_list/util/models/is_deadline.dart';
import 'package:demo_todo_list/util/models/is_routine.dart';
import 'package:flutter/material.dart';



class TodoTile extends StatelessWidget {
final String taskTitle;
final String taskDesc;
final TaskCategory taskCategory;
final bool starred;
final bool taskCompleted;
final Icon? taskIcon;
final int index;
final IsRoutine routine;
final IsDeadline? deadline;
final Function(bool,int) starChanged;
final VoidCallback? onTap;
  const TodoTile({super.key,
  this.taskCategory=const TaskCategory(taskCategory: "Work"),
  required this.taskTitle,
  required this.routine,
  this.onTap,
  this.deadline,
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

InkWell(
  onTap: onTap,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
       
        
           Row(
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
          ,
          ],
          ),
          
    
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
          routine.isRoutine ? Icon(Icons.repeat) : Icon(Icons.event),
          routine.isRoutine
      ? Text(routine.routineType ?? "")
      : (deadline?.deadline != null
          ? Text(deadline!.deadline.toString())
          : const Text("")),
            ]
          ),
          Text(taskCategory.taskCategory) 
          
          
        ],
      )
      ],
    ),
  ),
),

  
        );
  }
}
import 'package:demo_todo_list/common/widgets/task_category.dart';
import 'package:demo_todo_list/util/constants/available_icons.dart';

import 'package:demo_todo_list/util/models/is_routine.dart';
import 'package:flutter/material.dart';



class Todotasks {
  Todotasks._();
  static List toDoTasks= [
    ["Note 1: ","sample desc to test" ,false,AvailableIcons.availableIcons[0],false,IsRoutine(isRoutine: true,routineType: "Daily",time: TimeOfDay(hour: 7, minute: 30)),null,TaskCategory(taskCategory: "Work")], 
    ["Note 2: ","sample desc to test" ,false,AvailableIcons.availableIcons[2],true,IsRoutine(isRoutine: false,routineType: "One Time",),DateTime(2025, 6, 21, 17, 30),TaskCategory(taskCategory: "Chore")] ,
    ["Note 3: ","sample desc to test", true,AvailableIcons.availableIcons[3],false,IsRoutine(isRoutine: true,routineType: "Monthly",dayOfMonth: 14),null,TaskCategory(taskCategory: "Work")],// default notes
    ["Note 4: ","sample desc to test", true,AvailableIcons.availableIcons[3],false,IsRoutine(isRoutine: true,routineType: "Weekly",daysOfWeek: "Monday"),null,TaskCategory(taskCategory: "Chore")]
  ];
  }/*[
  0:title,
  1:desc,
  2:completed,
  3:icon,
  4:starred,
  5:isRoutine,
  6:Deadline type datetime,
  7:category
  ] */
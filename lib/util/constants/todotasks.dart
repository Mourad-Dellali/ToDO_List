import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:flutter/material.dart';


class Todotasks {
  Todotasks._();
  static List toDoTasks= [
    ["Note 1: ","sample desc to test" ,false,Icon(AvailableIcons.availableIcons[0]),false], // [title,desc,completed,icon,starred]
    ["Note 2: ","sample desc to test" ,false,Icon(AvailableIcons.availableIcons[2]),true] ,
    ["Note 3: ","sample desc to test", true,Icon(AvailableIcons.availableIcons[3]),false]// default notes
  ];
  }
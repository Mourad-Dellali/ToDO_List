import 'package:flutter/material.dart';

class IsRoutine {
  
  final bool isRoutine;
  final List<int>? daysOfWeek;
  final int? dayOfMonth;
  final TimeOfDay? time;
  IsRoutine({
    this.isRoutine=false,
    this.time,
    this.daysOfWeek,
    this.dayOfMonth,
  });
}
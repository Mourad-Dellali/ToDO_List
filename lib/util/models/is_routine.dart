import 'package:flutter/material.dart';

class IsRoutine {
  
  final bool isRoutine;
  final String? routineType;
  final String? daysOfWeek;
  final int? dayOfMonth;
  final TimeOfDay? time;
  IsRoutine({
    this.routineType,
    this.isRoutine=false,
    this.time,
    this.daysOfWeek,
    this.dayOfMonth,
  });
}
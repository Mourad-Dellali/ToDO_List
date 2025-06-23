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
  IsRoutine copyWith({
    bool? isRoutine,
    String? routineType,
    TimeOfDay? time,
    int? dayOfMonth,
    String? daysOfWeek,
  }) {
    return IsRoutine(
      isRoutine: isRoutine ?? this.isRoutine,
      routineType: routineType ?? this.routineType,
      time: time ?? this.time,
      dayOfMonth: dayOfMonth ?? this.dayOfMonth,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
    );
  }
}
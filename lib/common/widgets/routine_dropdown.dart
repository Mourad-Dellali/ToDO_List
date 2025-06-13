import 'package:demo_todo_list/common/widgets/task_deadline.dart';
import 'package:flutter/material.dart';

class RoutineDropdown extends StatefulWidget {
  
  final String? currentRoutine;
  final TimeOfDay? timeOfDay;
  final String? weekday;
  final DateTime? deadline;
  final int? dayofmonth;
  const RoutineDropdown({super.key,
  required this.currentRoutine,
  this.deadline,
  this.timeOfDay,
  this.weekday,
  this.dayofmonth});

  @override
  State<RoutineDropdown> createState() => _RoutineDropdownState();
}

class _RoutineDropdownState extends State<RoutineDropdown> {
  late String? dropDownValue ;
  final now = DateTime.now();
  static const List<String> weekdays = [
    'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
  ];

  late String dayValue;
  late int? monthPickedDay;
  TimeOfDay timeOfDay=TimeOfDay.now();
@override
  void initState() {
    super.initState();
    dayValue = widget.weekday ?? weekdays[now.weekday - 1];
    monthPickedDay = widget.dayofmonth ?? now.day;
    dropDownValue=widget.currentRoutine;
    timeOfDay = widget.timeOfDay ?? TimeOfDay.now();
  }
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: timeOfDay,
    );
    if (picked != null && picked != timeOfDay) {
      setState(() {
        timeOfDay = picked;
      });
    }
  }

  Future<void> _pickMonthlyDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(now.year, now.month, now.day),
      firstDate: DateTime(now.year, now.month, 1),
      lastDate: DateTime(now.year, now.month + 1, 0),
      helpText: 'Select Day of Month',
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );
    if (picked != null) {
      setState(() {
        monthPickedDay = picked.day;
      });
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButton<String>(
          value: dropDownValue,
          icon: Icon(Icons.arrow_drop_down),
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(value: "One Time", child: Text("One Time")),
            DropdownMenuItem<String>(value: "Daily", child: Text("Daily")),
            DropdownMenuItem<String>(value: "Weekly", child: Text("Weekly")),
            DropdownMenuItem<String>(value: "Monthly", child: Text("Monthly")),
          ],
        ),
        if (dropDownValue == 'Daily')
          Row(
            
          
            children: [
              ElevatedButton(
                onPressed: () => _selectTime(context),
                child: Text('Pick Time'),
              ),
              const SizedBox(width: 12),
              Text('Selected Time: ${timeOfDay.format(context)}'),
            ],
          ),
          if (dropDownValue == "One Time")
          TaskDeadline(deadline: widget.deadline,),
        if (dropDownValue == "Weekly")
          DropdownButton<String>(
            value: dayValue,
            icon: Icon(Icons.arrow_drop_down),
            onChanged: (String? newValue) {
              setState(() {
                dayValue = newValue!;
              });
            },
            items: weekdays
                .map((day) => DropdownMenuItem<String>(
                      value: day,
                      child: Text(day),
                    ))
                .toList(),
          ),
        if (dropDownValue == "Monthly")
          Row(
            children: [
              ElevatedButton(
                onPressed: () => _pickMonthlyDate(context),
                child: Text('Pick Day of Month'),
              ),
              const SizedBox(width: 12),
              Text(
                'Selected Day: ${monthPickedDay ?? "None"}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class RoutineDropdown extends StatefulWidget {
  
  const RoutineDropdown({super.key});

  @override
  State<RoutineDropdown> createState() => _RoutineDropdownState();
}

class _RoutineDropdownState extends State<RoutineDropdown> {
    String dropDownValue='One Time';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropDownValue,
      icon: Icon(Icons.arrow_downward),

       onChanged: (String? newValue) {
        setState(() {
          dropDownValue=newValue!;
        });
       },
       items: 
        const [
          DropdownMenuItem<String>( value: "One Time",child: Text("One Time")),
          DropdownMenuItem<String>( value: "Daily",child: Text("Daily")),
          DropdownMenuItem<String>( value: "Weekly",child: Text("Weekly")),
          DropdownMenuItem<String>( value: "Monthly",child: Text("Monthly")),
        ]
       
       );
       
  }
}
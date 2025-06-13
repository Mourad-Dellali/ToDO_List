import 'package:flutter/material.dart';

class TaskCategory extends StatefulWidget {
  final String? taskCategory;
  const TaskCategory({super.key,
  this.taskCategory});

  @override
  State<TaskCategory> createState() => _TaskCategoryState();
}

class _TaskCategoryState extends State<TaskCategory> {
  static const List<String> taskCategories = [
    'Chore',
    'Work',
    'Study',
    'Personal',
    'Health',
    'Shopping',
    'Finance',
    'Errands',
  ];

  String? category; // Variable to store the selected category
@override
void initState() {
  super.initState();
  category=widget.taskCategory;
}
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: category,
      hint: const Text('Select Category'),
      items: taskCategories.map(
        (cat) => DropdownMenuItem(
          value: cat,
          child: Text(cat),
        ),
      ).toList(),
      onChanged: (String? newValue) {
        setState(() {
          category = newValue!;
        });
      },
    );
  }
}

import 'package:flutter/material.dart';

class TaskCategory extends StatelessWidget {
  final String taskCategory;
  final void Function(String taskCategory)? onChanged;
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

  const TaskCategory({
    super.key,
    required this.taskCategory,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: taskCategory,
      items: taskCategories.map(
        (cat) => DropdownMenuItem(
          value: cat,
          child: Text(cat),
        ),
      ).toList(),
      onChanged: (String? newValue) {
        if (newValue != null && onChanged != null) {
          onChanged!(newValue);
        }
      },
    );
  }
}
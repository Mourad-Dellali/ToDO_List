import 'package:flutter/material.dart';

class TaskDeadline extends StatefulWidget {
  final DateTime? deadline;
  final void Function({
  DateTime? deadline,
})? onChanged;
  const TaskDeadline({super.key,
  this.deadline,
  this.onChanged});

  @override
  State<TaskDeadline> createState() => _TaskDeadlineState();
}

class _TaskDeadlineState extends State<TaskDeadline> {
  DateTime? _deadline;
  
  Future<void> _pickDeadline(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: _deadline ?? DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  if (picked != null && picked != _deadline) {
    setState(() {
      _deadline = picked;
    });
    _notifyParent();
    
  }
}
void _notifyParent() {
    if (widget.onChanged != null) {
      widget.onChanged!(deadline: _deadline);
    }
  }
@override
  void initState() {
    super.initState();
    _deadline=widget.deadline;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    ElevatedButton(
      onPressed: () => _pickDeadline(context),
      child: Text('Pick Deadline'),
    ),
    const SizedBox(width: 10),
    Text(
      _deadline == null
        ? 'No deadline set'
        : 'Deadline: ${_deadline!.day}/${_deadline!.month}/${_deadline!.year}'
    ),
  ],
);
  }
}
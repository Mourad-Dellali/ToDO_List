import 'package:demo_todo_list/common/widgets/icon_selector.dart';
import 'package:demo_todo_list/common/widgets/routine_dropdown.dart';
import 'package:demo_todo_list/common/widgets/task_category.dart';
import 'package:demo_todo_list/common/widgets/textfield.dart';
import 'package:demo_todo_list/util/models/is_routine.dart';
import 'package:demo_todo_list/util/models/todotasks.dart';
import 'package:flutter/material.dart';

class CreatenewtaskDialog extends StatefulWidget {
  const CreatenewtaskDialog({super.key});

  @override
  State<CreatenewtaskDialog> createState() => _CreatenewtaskDialogState();
}

class _CreatenewtaskDialogState extends State<CreatenewtaskDialog> {
var _selectedIcon=Icons.apps;

void showIconPicker(BuildContext context, Function(IconData) onIconSelected) {
  showModalBottomSheet(context: context, builder:(context) =>
   IconSelector(
    onIconSelected: (icon) {
      Navigator.of(context).pop();
      onIconSelected(icon);
    }
    
    ),
  );
}
  bool _isRoutine = false;
  String _currentRoutine = "One Time";
  TimeOfDay? _timeOfDay;
  int? _dayOfMonth;
  String? _weekday;
  DateTime? _deadline;
  String _taskCategory = "Work";

  void _createTask() {
    Todotasks.toDoTasks.add([
      _titleTextController.text,
      _descriptionTextController.text,
      false,
      _selectedIcon,
      false,
      IsRoutine(
        isRoutine: _isRoutine,
        routineType: _currentRoutine,
        time: _timeOfDay,
        dayOfMonth: _dayOfMonth,
        daysOfWeek: _weekday,
      ),
      _deadline,
      TaskCategory(taskCategory: _taskCategory), // add state list later
      
    ]);
    print(Todotasks.toDoTasks[4][5].routineType);
    Navigator.of(context).pop(); 
  }
final _titleTextController= TextEditingController();
final _descriptionTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(4),
      //color: Colors.blue,
     
      child:Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          
          Row(
            
children: [
IconButton(
  icon:Icon(_selectedIcon,),
  onPressed: () {
    showIconPicker(context,
    (IconData selectedIcon) {
      setState(() {
        _selectedIcon=selectedIcon;
      });
    }
    );
  },

),
TTextfield(textController: _titleTextController, textTitle: "Title")


],
          ),
          TTextfield(textController: _descriptionTextController, textTitle: "Description",maxLines: 5,),
RoutineDropdown(
            isRoutine: _isRoutine,
            currentRoutine: _currentRoutine,
            timeOfDay: _timeOfDay,
            dayofmonth: _dayOfMonth,
            weekday: _weekday,
            deadline: _deadline,
            
            onChanged: ({
              required bool isRoutine,
              required String routineType,
              TimeOfDay? time,
              int? dayOfMonth,
              String? weekday,
              DateTime? deadline,
            }) {
              setState(() {
                _isRoutine = isRoutine;
                _currentRoutine = routineType;
                _timeOfDay = time;
                _dayOfMonth = dayOfMonth;
                _weekday = weekday;
                _deadline = deadline;
              });
            },
          ),
 TaskCategory(
  taskCategory: _taskCategory,
  onChanged: (taskCategory) {
    setState(() {
      _taskCategory = taskCategory;
    });
  },
),
ElevatedButton(onPressed: _createTask, child: Text("Create Task")),
Spacer()
          
        ],
      )
    );
  }
}
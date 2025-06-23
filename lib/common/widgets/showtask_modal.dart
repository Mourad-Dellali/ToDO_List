import 'package:demo_todo_list/common/widgets/icon_selector.dart';
import 'package:demo_todo_list/common/widgets/routine_dropdown.dart';
import 'package:demo_todo_list/common/widgets/task_category.dart';
import 'package:demo_todo_list/common/widgets/textfield.dart';
import 'package:demo_todo_list/util/models/todotasks.dart';
import 'package:flutter/material.dart';



class ShowTaskModal extends StatefulWidget {
  final int index;
  const ShowTaskModal({super.key,
  required this.index,});

  @override
  State<ShowTaskModal> createState() => _ShowTaskModalState();
}

class _ShowTaskModalState extends State<ShowTaskModal> {
  late IconData _selectedIcon;
late TextEditingController _titleTextController;
late TextEditingController _descriptionTextController;
late bool _isRoutine;
late String? _routineType;
TimeOfDay? _timeOfDay;
int? _dayOfMonth;
String? _weekday;
DateTime? _deadline;
  @override
  void initState() {
    super.initState();
    _titleTextController= TextEditingController(text:Todotasks.toDoTasks[widget.index][0] );
    _descriptionTextController=TextEditingController(text: Todotasks.toDoTasks[widget.index][1]);
    _selectedIcon = Todotasks.toDoTasks[widget.index][3];
    final routine = Todotasks.toDoTasks[widget.index][5];
  _isRoutine = routine.isRoutine;
  _routineType = routine.routineType;
  _timeOfDay = routine.time;
  _dayOfMonth = routine.dayOfMonth;
  _weekday = routine.daysOfWeek;
  _deadline = Todotasks.toDoTasks[widget.index][6];
  }
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
void _modifyTask() {
    Todotasks.toDoTasks[widget.index][0]=_titleTextController.text;
    Todotasks.toDoTasks[widget.index][1]=_descriptionTextController.text;
    //Todotasks.toDoTasks[widget.index][2]=
    // Todotasks.toDoTasks[widget.index][3]
    //Todotasks.toDoTasks[widget.index][4]
    Todotasks.toDoTasks[widget.index][5] = Todotasks.toDoTasks[widget.index][5].copyWith(
    isRoutine: _isRoutine,
    routineType: _routineType,
    time: _timeOfDay,
    dayOfMonth: _dayOfMonth,
    daysOfWeek: _weekday,
  );
    
    //print(Todotasks.toDoTasks[4][5].routineType);
    Navigator.of(context).pop(true);
  }
  @override
  Widget build(BuildContext context) {
    
   return Container(
    
      padding: EdgeInsets.all(4),
      //color: Colors.blue,
     
      child:Column(
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
RoutineDropdown(isRoutine: Todotasks.toDoTasks[widget.index][5].isRoutine,currentRoutine:  Todotasks.toDoTasks[widget.index][5].routineType,deadline:Todotasks.toDoTasks[widget.index][6] ,timeOfDay: Todotasks.toDoTasks[widget.index][5].time,weekday:Todotasks.toDoTasks[widget.index][5].daysOfWeek ,dayofmonth:Todotasks.toDoTasks[widget.index][5].dayOfMonth ,
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
      _routineType = routineType;
      _timeOfDay = time;
      _dayOfMonth = dayOfMonth;
      _weekday = weekday;
      _deadline = deadline;

      Todotasks.toDoTasks[widget.index][5] = Todotasks.toDoTasks[widget.index][5].copyWith(
        isRoutine: _isRoutine,
        routineType: _routineType,
        time: _timeOfDay,
        dayOfMonth: _dayOfMonth,
        daysOfWeek: _weekday,
      );
      Todotasks.toDoTasks[widget.index][6] = _deadline;
    });
  },),
TaskCategory(),
ElevatedButton(onPressed: _modifyTask, child: Text("Save")),
Spacer()
          
        ],
      )
    );
  }
  
}
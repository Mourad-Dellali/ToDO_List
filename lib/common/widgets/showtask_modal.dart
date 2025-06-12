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
  @override
  Widget build(BuildContext context) {
   return Container(
    IconData _selectedIcon=Todotasks.toDoTasks[index][3];
      padding: EdgeInsets.all(4),
      //color: Colors.blue,
     
      child:Column(
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
RoutineDropdown(),
          
        ],
      )
    );
  }
}
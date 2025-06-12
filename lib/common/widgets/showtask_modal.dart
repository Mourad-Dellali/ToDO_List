import 'package:demo_todo_list/common/widgets/icon_selector.dart';
import 'package:demo_todo_list/common/widgets/routine_dropdown.dart';
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
  @override
  void initState() {
    super.initState();
    _titleTextController= TextEditingController(text:Todotasks.toDoTasks[widget.index][0] );
    _descriptionTextController=TextEditingController(text: Todotasks.toDoTasks[widget.index][1]);
    _selectedIcon = Todotasks.toDoTasks[widget.index][3];
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
  @override
  Widget build(BuildContext context) {
    
   return Container(
    
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
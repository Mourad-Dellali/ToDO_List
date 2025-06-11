import 'package:demo_todo_list/common/widgets/icon_selector.dart';
import 'package:demo_todo_list/common/widgets/routine_dropdown.dart';
import 'package:demo_todo_list/common/widgets/textfield.dart';
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
final _titleTextController= TextEditingController();
final _descriptionTextController=TextEditingController();
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
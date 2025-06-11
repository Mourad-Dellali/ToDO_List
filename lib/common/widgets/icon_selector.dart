import 'package:demo_todo_list/util/constants/available_icons.dart';
import 'package:flutter/material.dart';

class IconSelector extends StatelessWidget {


final Function(IconData) onIconSelected;
   const IconSelector({super.key,
   required this.onIconSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,
    ),
    itemCount:AvailableIcons.availableIcons.length,
    shrinkWrap: true,
     itemBuilder:(context, index) {
      
      return IconButton(
        onPressed: () => onIconSelected(AvailableIcons.availableIcons[index]),
           icon: Icon(AvailableIcons.availableIcons[index],size:32)
           );
     }
           );
  }
}

import 'package:demo_todo_list/common/widgets/appbar.dart';
import 'package:demo_todo_list/common/widgets/createnewtask_dialog.dart';
import 'package:demo_todo_list/common/widgets/todo_tile.dart';
import 'package:flutter/material.dart';



class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List toDoTasks= [
    ["Note 1: ","" ,false],
    ["Note 2: ","" ,false] ,
    ["Note 3: ","", true]// default notes
  ];
void checkboxChanged (bool? value, int index) {
setState(() {
  toDoTasks[index][2]=!toDoTasks[index][2];
});

}
void createNewTask () {
  showModalBottomSheet(context: context,
  // isScrollControlled: true,
   builder:(context) => CreatenewtaskDialog(),);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: TAppBar(title: "To Do"),
       floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child:Icon(Icons.add),
        ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 20,
                  children: [
                    Text("Notes"),
                    Text("Pinned")
                  ],
                ),
                Icon(Icons.sort)
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: toDoTasks.length,
                itemBuilder: (context,index){
                  return TodoTile(
                    taskTitle: toDoTasks[index][0],
                    taskDesc: toDoTasks[index][1],
                    taskCompleted: toDoTasks[index][2],
                    onChanged:(value) => checkboxChanged(value,index),
                  );
                },
              
                ),
            )
         
          ],
        ),
        
      )
    );
  }
}

import 'package:demo_todo_list/common/widgets/appbar.dart';
import 'package:demo_todo_list/common/widgets/createnewtask_dialog.dart';
import 'package:demo_todo_list/common/widgets/todo_tile.dart';
import 'package:demo_todo_list/util/constants/todotasks.dart';
import 'package:flutter/material.dart';



class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  

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
                itemCount: Todotasks.toDoTasks.length,
                itemBuilder: (context,index){
                  return TodoTile(
                    index: index,
                    taskTitle: Todotasks.toDoTasks[index][0],
                    taskDesc: Todotasks.toDoTasks[index][1],
                    starred: Todotasks.toDoTasks[index][2],
                    taskCompleted: Todotasks.toDoTasks[index][4],
                    taskIcon: Todotasks.toDoTasks[index][3],
                    starChanged: (value, index) {
                      
        setState(() {
          Todotasks.toDoTasks[index][2] = value;
        }); 
      },
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
import 'package:demo_todo_list/common/widgets/appbar.dart';
import 'package:demo_todo_list/common/widgets/createnewtask_dialog.dart';
import 'package:demo_todo_list/common/widgets/showtask_modal.dart';
import 'package:demo_todo_list/common/widgets/todo_tile.dart';
import 'package:demo_todo_list/util/models/todotasks.dart';
import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  Future<void> createNewTask() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) => CreatenewtaskDialog(),
    );
    setState(() {});
  }

  Future<void> showTask(int index) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (context) => ShowTaskModal(index: index),
    );
    if (result == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    List allTasks = Todotasks.toDoTasks;
    List completedTasks = allTasks.where((task) => task[4]).toList();
    List uncompletedTasks = allTasks.where((task) => !task[4]).toList();
    uncompletedTasks.sort((a, b) => b[2] ? 1 : 0 - (a[2] ? 1 : 0));

    List<Widget> taskSections = [];

    // Notes & Pinned Row
    taskSections.add(
      Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Notes"),
                SizedBox(width: 20),
                Text("Pinned"),
              ],
            ),
            Icon(Icons.sort),
          ],
        ),
      ),
    );
     // Uncompleted Tasks Section
    if (uncompletedTasks.isNotEmpty) {
     
      taskSections.addAll(uncompletedTasks.map((task) {
        final originalIndex = allTasks.indexOf(task);
        return TodoTile(
          index: originalIndex,
          taskTitle: task[0],
          taskDesc: task[1],
          starred: task[2],
          taskCompleted: task[4],
          taskIcon: Icon(task[3]),
          routine: task[5],
          deadline: task[6],
          taskCategory: task[7],
          onTap: () => showTask(originalIndex),
          starChanged: (value, _) {
            setState(() {
              allTasks[originalIndex][2] = value;
            });
          },
        );
      }).toList());
    }
    // Completed Tasks Section
    if (completedTasks.isNotEmpty) {
      taskSections.add(
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 6),
          child: Text(
            "Completed Tasks",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      );
      taskSections.addAll(completedTasks.map((task) {
        final originalIndex = allTasks.indexOf(task);
        return TodoTile(
          index: originalIndex,
          taskTitle: task[0],
          taskDesc: task[1],
          starred: task[2],
          taskCompleted: task[4],
          taskIcon: Icon(task[3]),
          routine: task[5],
          deadline: task[6],
          taskCategory: task[7],
          onTap: () => showTask(originalIndex),
          starChanged: (value, _) {
            setState(() {
              allTasks[originalIndex][2] = value;
            });
          },
        );
      }).toList());
    }

   


    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: TAppBar(title: "To Do"),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: taskSections,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../widgets/header_actions.dart';
import '../widgets/task_input.dart';
import '../widgets/task_tile.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final List<Task> tasks = [];

  void addTask(String title) {
    setState(() => tasks.add(Task(title: title)));
  }

  void toggleTask(Task task) {
    setState(() => task.isDone = !task.isDone);
  }

  void removeTask(Task task) {
    setState(() => tasks.remove(task));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
        actions: const [HeaderActions()],
      ),
      body: Column(
        children: [
          TaskInput(onSubmit: addTask),
          Expanded(
            child: ListView(
              children:
                  tasks.map((task) {
                    return TaskTile(
                      task: task,
                      onToggle: () => toggleTask(task),
                      onDelete: () => removeTask(task),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

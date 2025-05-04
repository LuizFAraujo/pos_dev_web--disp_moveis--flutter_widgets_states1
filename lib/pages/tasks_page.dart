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
  final List<Task> tasks = []; // Lista de tarefas

  // Adiciona uma nova tarefa à lista
  void addTask(String title) {
    setState(() => tasks.add(Task(title: title)));
  }

  // Alterna o status (feito/não feito) da tarefa
  void toggleTask(Task task) {
    setState(() => task.isDone = !task.isDone);
  }

  // Remove uma tarefa da lista
  void removeTask(Task task) {
    setState(() => tasks.remove(task));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'), // Título da página
        actions: const [HeaderActions()], // Botões de ações no topo
      ),
      body: Column(
        children: [
          TaskInput(onSubmit: addTask), // Campo de entrada para nova tarefa
          Expanded(
            child: ListView(
              children:
                  tasks.map((task) {
                    return TaskTile(
                      task: task, // Exibe a tarefa
                      onToggle:
                          () => toggleTask(task), // Alterna status ao clicar
                      onDelete:
                          () => removeTask(
                            task,
                          ), // Remove ao clicar no ícone de deletar
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

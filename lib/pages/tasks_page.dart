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
  // Lista de tarefas iniciais (simulação realista)
  final List<TaskModel> _tasks = [
    TaskModel(title: 'Estudar widgets Stateful e Stateless', isDone: true),
    TaskModel(title: 'Implementar ReactionBar na Home', isDone: false),
    TaskModel(title: 'Revisar organização do projeto', isDone: false),
    TaskModel(title: 'Finalizar tela de configurações', isDone: true),
  ];

  // Adiciona uma nova tarefa
  void _addTask(String title) {
    if (title.trim().isEmpty) return;
    setState(() => _tasks.add(TaskModel(title: title)));
  }

  // Alterna o estado de conclusão de uma tarefa
  void _toggleTask(int index) {
    setState(() => _tasks[index].isDone = !_tasks[index].isDone);
  }

  // Remove tarefas que já estão concluídas
  void _clearCompleted() {
    setState(() => _tasks.removeWhere((task) => task.isDone));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
        actions: [
          IconButton(
            tooltip: 'Limpar concluídas',
            onPressed: _clearCompleted,
            icon: const Icon(Icons.cleaning_services_outlined),
          ),
          HeaderActions(), // botão de tema no topo
        ],
      ),
      body: Column(
        children: [
          // Campo de entrada para nova tarefa
          TaskInput(onSubmit: _addTask),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 12),
              itemCount: _tasks.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final task = _tasks[index];
                return TaskTile(
                  task: task,
                  onToggle: () => _toggleTask(index),
                  onDelete: () => setState(() => _tasks.removeAt(index)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

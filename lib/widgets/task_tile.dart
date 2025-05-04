import 'package:flutter/material.dart';

import '../models/task_model.dart';

class TaskTile extends StatelessWidget {
  final Task task; // Tarefa a ser exibida
  final VoidCallback onToggle; // Função chamada ao marcar/desmarcar a tarefa
  final VoidCallback onDelete; // Função chamada ao clicar no botão de deletar

  const TaskTile({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title, // Título da tarefa
        style: TextStyle(
          // Risco no texto se a tarefa estiver concluída
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: task.isDone, // Estado atual da tarefa
        onChanged: (_) => onToggle(), // Alterna status ao marcar
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete, // Remove a tarefa ao clicar no ícone
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TaskInput extends StatefulWidget {
  final void Function(String) onSubmit;

  const TaskInput({super.key, required this.onSubmit});

  @override
  State<TaskInput> createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  final controller = TextEditingController();

  void _submit() {
    final text = controller.text.trim();
    if (text.isNotEmpty) {
      widget.onSubmit(text);
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Nova tarefa'),
              onSubmitted: (_) => _submit(),
            ),
          ),
          IconButton(icon: const Icon(Icons.add), onPressed: _submit),
        ],
      ),
    );
  }
}

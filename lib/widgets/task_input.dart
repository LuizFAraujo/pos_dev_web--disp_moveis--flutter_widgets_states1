import 'package:flutter/material.dart';

class TaskInput extends StatefulWidget {
  final void Function(String)
  onSubmit; // Função chamada ao adicionar uma nova tarefa

  const TaskInput({super.key, required this.onSubmit});

  @override
  State<TaskInput> createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  final controller =
      TextEditingController(); // Controlador para o campo de texto

  // Envia o texto se não estiver vazio e limpa o campo
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
      padding: const EdgeInsets.all(12), // Espaçamento externo
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller, // Campo de texto para digitar a tarefa
              decoration: const InputDecoration(labelText: 'Nova tarefa'),
              onSubmitted:
                  (_) => _submit(), // Aciona envio ao pressionar "Enter"
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _submit, // Aciona envio ao clicar no ícone "+"
          ),
        ],
      ),
    );
  }
}

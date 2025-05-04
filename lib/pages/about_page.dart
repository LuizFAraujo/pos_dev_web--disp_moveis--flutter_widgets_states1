import 'package:flutter/material.dart';

import '../widgets/header_actions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        actions: const [HeaderActions()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '📱 InteraHub – Mini Hub de Interações\n',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Este aplicativo demonstra o uso de:'),
            SizedBox(height: 8),
            Text('• Widgets Stateful (curtir, tarefas)'),
            Text('• Widgets Stateless (layouts, botões)'),
            Text('• Provider para tema claro/escuro'),
            Text('• Navegação entre telas'),
            Text('• Clean code e componentes reutilizáveis'),
          ],
        ),
      ),
    );
  }
}

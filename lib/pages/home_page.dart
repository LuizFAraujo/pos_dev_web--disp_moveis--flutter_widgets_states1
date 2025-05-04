import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../widgets/header_actions.dart';
import '../widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de postagens fictícias
    final List<PostModel> posts = [
      PostModel(
        title: 'Mudanças no app Flutter Widgets',
        subtitle: 'por Equipe Dev · 03/05/2025',
        content:
            'Estamos testando novos componentes interativos como ReactionBar, além de melhorar a experiência com alternância de temas.',
      ),
      PostModel(
        title: 'Você sabia?',
        subtitle: 'por Sistema · 02/05/2025',
        content:
            'Widgets Stateless são ideais para conteúdos que não mudam. Já os Stateful são perfeitos para interfaces dinâmicas, como botões de curtida!',
      ),
      PostModel(
        title: 'Melhorias visuais aplicadas',
        subtitle: 'por Design Team · 01/05/2025',
        content:
            'Aplicamos novos estilos nos cards, organizamos a estrutura por arquivos e usamos boas práticas de código limpo para facilitar o aprendizado.',
      ),
      PostModel(
        title: 'Simulação completa de feed',
        subtitle: 'por IA Assistant · 30/04/2025',
        content:
            'Este é um post fictício com o objetivo de preencher espaço e demonstrar como o scroll da tela funciona corretamente com múltiplos itens exibidos.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed de Postagens'),
        actions: [HeaderActions()],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: PostWidget(post: posts[index]),
          );
        },
      ),
    );
  }
}

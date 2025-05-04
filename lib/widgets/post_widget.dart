import 'package:flutter/material.dart';

import '../models/post_model.dart';
import 'reaction_bar.dart';

class PostWidget extends StatelessWidget {
  final Post post; // Objeto do post que será exibido

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ), // Espaçamento ao redor do card
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Espaçamento interno
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.content,
              style: const TextStyle(fontSize: 16),
            ), // Exibe o conteúdo do post
            const SizedBox(height: 8), // Espaço entre texto e reações
            ReactionBar(post: post), // Barra de curtidas e descurtidas
          ],
        ),
      ),
    );
  }
}

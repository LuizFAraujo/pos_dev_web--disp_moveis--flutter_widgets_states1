import 'package:flutter/material.dart';

import '../models/post_model.dart';
import 'reaction_bar.dart';

// Widget que representa visualmente uma postagem
class PostWidget extends StatelessWidget {
  final PostModel post; // Post que será exibido

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título da postagem
            Text(
              post.title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            // Subtítulo (autor e data)
            Text(
              post.subtitle,
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(color: Colors.grey),
            ),

            const SizedBox(height: 12),

            // Corpo da postagem
            Text(post.content, style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 16),

            // Barra de reações (👍 👎)
            ReactionBar(post: post),
          ],
        ),
      ),
    );
  }
}

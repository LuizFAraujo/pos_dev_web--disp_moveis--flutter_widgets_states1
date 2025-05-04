import 'package:flutter/material.dart';

import '../models/post_model.dart';

// Widget que exibe a barra de reações (👍 👎)
class ReactionBar extends StatefulWidget {
  final PostModel post; // Post que será manipulado (likes/dislikes)

  const ReactionBar({super.key, required this.post});

  @override
  State<ReactionBar> createState() => _ReactionBarState();
}

class _ReactionBarState extends State<ReactionBar> {
  // Incrementa o número de dislikes e atualiza a UI
  void _dislike() => setState(() => widget.post.dislikes++);

  // Incrementa o número de likes e atualiza a UI
  void _like() => setState(() => widget.post.likes++);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Botão de dislike
        IconButton(onPressed: _dislike, icon: const Icon(Icons.thumb_down)),
        // Exibe total de dislikes
        Text('${widget.post.dislikes}'),

        const SizedBox(width: 12),

        // Botão de like
        IconButton(onPressed: _like, icon: const Icon(Icons.thumb_up)),
        // Exibe total de likes
        Text('${widget.post.likes}'),
      ],
    );
  }
}

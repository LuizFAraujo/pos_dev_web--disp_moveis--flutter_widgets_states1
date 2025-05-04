import 'package:flutter/material.dart';

import '../models/post_model.dart';

class ReactionBar extends StatefulWidget {
  final Post post; // Post que será manipulado (likes/dislikes)

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
        IconButton(
          onPressed: _dislike,
          icon: const Icon(Icons.thumb_down),
        ), // Botão de dislike
        Text('${widget.post.dislikes}'), // Exibe total de dislikes
        const SizedBox(width: 12),
        IconButton(
          onPressed: _like,
          icon: const Icon(Icons.thumb_up),
        ), // Botão de like
        Text('${widget.post.likes}'), // Exibe total de likes
      ],
    );
  }
}

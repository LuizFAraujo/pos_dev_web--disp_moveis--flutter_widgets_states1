import 'package:flutter/material.dart';

import '../models/post_model.dart';

class ReactionBar extends StatefulWidget {
  final Post post;

  const ReactionBar({super.key, required this.post});

  @override
  State<ReactionBar> createState() => _ReactionBarState();
}

class _ReactionBarState extends State<ReactionBar> {
  void _like() => setState(() => widget.post.likes++);
  void _dislike() => setState(() => widget.post.dislikes++);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: _dislike, icon: const Icon(Icons.thumb_down)),
        Text('${widget.post.dislikes}'),
        const SizedBox(width: 12),
        IconButton(onPressed: _like, icon: const Icon(Icons.thumb_up)),
        Text('${widget.post.likes}'),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../widgets/header_actions.dart';
import '../widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = [
      Post(content: 'Lorem ipsum dolor sit amet.'),
      Post(content: 'Ut enim ad minim veniam.'),
      Post(content: 'Duis aute irure dolor in reprehenderit.'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('InteraHub'),
        actions: const [HeaderActions()],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => PostWidget(post: posts[index]),
      ),
    );
  }
}

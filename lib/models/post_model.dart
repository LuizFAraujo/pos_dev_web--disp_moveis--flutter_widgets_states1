// Modelo de dados para uma postagem

class PostModel {
  final String title; // Título da postagem
  final String subtitle; // Subtítulo (autor/data)
  final String content; // Corpo do texto
  int likes; // Quantidade de curtidas
  int dislikes; // Quantidade de descurtidas

  PostModel({
    required this.title,
    required this.subtitle,
    required this.content,
    this.likes = 0,
    this.dislikes = 0,
  });
}

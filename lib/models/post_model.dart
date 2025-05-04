class Post {
  final String content; // Conteúdo do post
  int likes; // Quantidade de curtidas
  int dislikes; // Quantidade de descurtidas

  // Construtor: exige o conteúdo e inicia likes/dislikes com zero por padrão
  Post({required this.content, this.likes = 0, this.dislikes = 0});
}

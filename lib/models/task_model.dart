class Task {
  final String title; // Título ou descrição da tarefa
  bool isDone; // Indica se a tarefa foi concluída

  // Construtor: exige o título e define como não concluída por padrão
  Task({required this.title, this.isDone = false});
}

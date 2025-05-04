project_root/
├── android/
│
├── lib/
│   └── main.dart
│   lib/
│   ├── main.dart                           # Entry point com Provider
│   ├── app.dart                            # MaterialApp com rotas e nav
│   │
│   ├── config/
│   │   └── themes.dart                     # Temas claro e escuro
│   │
│   ├── controllers/
│   │   └── theme_controller.dart           # Lógica de troca de tema
│   │
│   ├── models/
│   │   ├── post_model.dart                 # Modelo de postagem
│   │   └── task_model.dart                 # Modelo de tarefa
│   │
│   ├── pages/
│   │   ├── home_page.dart                  # Página com feed de postagens
│   │   ├── tasks_page.dart                 # Página de tarefas
│   │   ├── settings_page.dart              # Configurações (tema, opções simbólicas)
│   │   └── about_page.dart                 # Explicações sobre o app
│   │
│   └── widgets/
│       ├── post_widget.dart                # Exibe uma postagem completa
│       ├── reaction_bar.dart               # Botões 👍 👎 com contador
│       ├── task_tile.dart                  # Item da lista de tarefas
│       ├── task_input.dart                 # Campo para adicionar tarefa
│       ├── settings_tile.dart              # Opção na tela de config
│       └── header_actions.dart             # Botão de tema no AppBar
│
├── test/
│   └── widget_test.dart
│
├── web/
│
├── .metadata
├── analysis_options.yaml
├── ARVORE.md
├── LICENSE
├── pos_dev_web_disp_moveis_flutter_widgets_states1.iml
├── pubspec.yaml
└── README.md
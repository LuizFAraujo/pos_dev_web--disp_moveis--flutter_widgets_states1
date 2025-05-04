# 📁 Estrutura de Pastas e Arquivos 📁

A estrutura abaixo apresenta como o projeto **Flutter Widgets - Stateful e Stateless** está organizado, facilitando a navegação e o entendimento das principais partes do sistema.

Cada camada é separada conforme a responsabilidade: **Models** para dados, **Controllers** para lógica de estado, **Widgets** para componentes visuais reutilizáveis e **Pages** para cada tela da aplicação.

```plaintext
project_root/
├── android/
│   └── ...                               # Código nativo Android
│
├── lib/
│   ├── main.dart                         # Entry point com Provider e runApp
│   ├── app.dart                          # MaterialApp com rotas e BottomNavigationBar
│   │
│   ├── config/
│   │   └── themes.dart                   # Definições de tema claro e escuro
│   │
│   ├── controllers/
│   │   └── theme_controller.dart         # Controller com Provider para alternância de tema
│   │
│   ├── models/
│   │   ├── post_model.dart               # Modelo de dados de postagens (título, conteúdo, likes/dislikes)
│   │   └── task_model.dart               # Modelo de tarefas (título, estado de conclusão)
│   │
│   ├── pages/
│   │   ├── home_page.dart                # Página inicial com feed de postagens
│   │   ├── tasks_page.dart               # Tela com lista de tarefas e input para adicionar
│   │   ├── settings_page.dart            # Tela de configurações (tema, opções fictícias)
│   │   └── about_page.dart               # Tela explicativa sobre o app e propósito
│   │
│   └── widgets/
│       ├── post_widget.dart              # Card com exibição de título, subtítulo e conteúdo da postagem
│       ├── reaction_bar.dart             # Botões de reação 👎 👍 com contadores
│       ├── task_tile.dart                # Tile com checkbox para tarefas e botão de remover
│       ├── task_input.dart               # Campo de texto e botão para adicionar nova tarefa
│       ├── settings_tile.dart            # Item genérico usado na tela de configurações
│       └── header_actions.dart           # Botão no AppBar para alternância entre tema claro/escuro
│
├── test/
│   └── widget_test.dart                  # Teste básico: renderização inicial e troca de tema
│
├── web/                                  # Configuração do build para Flutter Web
│   └── ...                               # Arquivos gerados automaticamente (favicon, index.html)
│
├── .gitignore
├── .metadata                             # Arquivo interno do Flutter
├── Estrutura_de_Pastas_e_Arquivos.md     # Este arquivo com a estrutura comentada
├── LICENSE                               # Licença de uso (MIT)
├── README.md                             # Documentação principal do projeto
├── analysis_options.yaml                 # Regras de análise de código (linter)
└── pubspec.yaml                          # Dependências, assets e configurações do projeto
```

---

**🧠 Dica**: O projeto segue boas práticas de separação de responsabilidades, facilitando a escalabilidade, manutenção e entendimento do código.

> Projeto gerado para fins acadêmicos — Pós-Graduação IFSP.

📄 [Voltar para o README principal](./README.md)

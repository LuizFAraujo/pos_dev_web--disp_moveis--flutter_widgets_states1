# Atividade Prática - Flutter: Widgets e Gerenciamento de Estado

Projeto desenvolvido como parte da atividade prática da disciplina de **Dispositivos Móveis** do curso de Pós-Graduação em Desenvolvimento Web – IFSP.

---

## 📋 Disciplina

D3DDM - Desenvolvimento para Dispositivos Móveis

---

## 📦 Objetivo

Construir um aplicativo Flutter utilizando **widgets Stateless e Stateful**, com gerenciamento de estado global via `Provider`, alternância de tema (claro/escuro/sistema) e boas práticas de organização modular.

> Além da proposta inicial, o app foi expandido com múltiplas telas, componentes reutilizáveis e testes automatizados, entregando uma experiência interativa completa.

---

## ✨ Funcionalidades

- Alternância entre **tema claro, escuro e sistema**

- Página inicial com **postagens fictícias**
  - Cada postagem possui botões de 👍 e 👎 com contadores

- Página de **tarefas**:
  - Inserção de tarefas
  - Conclusão (checkbox)
  - Remoção

- Página de **configurações**:
  - Seleção de tema
  - Opções simbólicas

- Página **sobre** explicando o app

- **Botão de alternar tema acessível em todas as páginas**

---

## 📂 Estrutura do projeto

A estrutura completa de pastas e arquivos está descrita em:

📁 [`Estrutura_de_Pastas_e_Arquivos.md`](./Estrutura_de_Pastas_e_Arquivos.md)

---

## 🚀 Como executar o projeto

### ✅ Pré-requisitos

- Flutter SDK (recomenda-se versão 3.7.2 ou superior)
- VS Code ou Android Studio
- Navegador (para Flutter Web) ou Emulador Android/iOS

### ▶️ Passo a passo

1. Clone o repositório:

    ```bash
    git clone https://github.com/LuizFAraujo/pos_dev_web--disp_moveis--flutter_widgets_states1.git
    cd pos_dev_web--disp_moveis--flutter_widgets_states1
    ```

2. Instale as dependências:

    ```bash
    flutter pub get
    ```

3. Execute a aplicação:

    - **No navegador (Chrome):**

      ```bash
      flutter run -d chrome
      ```

    - **No emulador Android:**

      ```bash
      flutter run
      ```

---

## 🧪 Testes

Para rodar os testes unitários:

```bash
flutter test
```

> O arquivo principal de teste está em `test/widget_test.dart`, e realiza verificação da renderização da página inicial e alternância de tema via botão.

---

## 🧠 Conceitos aplicados

- `StatefulWidget` e `StatelessWidget`
- `Provider` para gerenciamento de estado
- `ThemeMode` global com suporte a tema dinâmico
- Testes com `flutter_test`
- Modularização e responsabilidade única por arquivo
- Boas práticas com Clean Code

---

## 📄 Licença

Este projeto está sob a licença MIT – consulte [LICENSE](https://github.com/LuizFAraujo/pos_dev_web--disp_moveis--flutter_widgets_states1/blob/main/LICENSE) para mais informações.

---

Desenvolvido para fins didáticos como parte da pós-graduação — **POS DEV WEB | Dispositivos Móveis**

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/themes.dart';
import 'controllers/theme_controller.dart';
import 'pages/about_page.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';
import 'pages/tasks_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Acessa o controller de tema para aplicar tema claro ou escuro dinamicamente
    final themeController = Provider.of<ThemeController>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      title: 'InteraHub',
      theme: lightTheme, // Tema claro definido no config/themes.dart
      darkTheme: darkTheme, // Tema escuro definido no config/themes.dart
      themeMode:
          themeController
              .themeMode, // Aplica o tema com base na escolha do usuário
      home: const _RootNavigation(), // Tela inicial com navegação por abas
    );
  }
}

class _RootNavigation extends StatefulWidget {
  const _RootNavigation();

  @override
  State<_RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<_RootNavigation> {
  int _currentIndex = 0; // Índice da aba selecionada

  final List<Widget> _pages = const [
    HomePage(), // Página Inicial
    TasksPage(), // Página de Tarefas
    SettingsPage(), // Página de Configurações
    AboutPage(), // Página Sobre
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Exibe a página correspondente à aba atual
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Aba selecionada
        selectedItemColor: Theme.of(context).colorScheme.primary, // Cor ativa
        unselectedItemColor: Theme.of(context).disabledColor, // Cor inativa
        onTap:
            (index) => setState(() => _currentIndex = index), // Atualiza a aba
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: 'Tarefas',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Config'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Sobre',
          ),
        ],
      ),
    );
  }
}

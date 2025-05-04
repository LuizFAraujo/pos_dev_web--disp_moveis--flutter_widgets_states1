// lib/widgets/header_actions.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/theme_controller.dart';

/// Botão de alternância de tema no topo de todas as páginas
class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    // Acessa o controller do tema via Provider
    final themeController = Provider.of<ThemeController>(context);

    // Verifica se o tema atual é escuro com base no controller (e não no Theme.of)
    final isDark = themeController.themeMode == ThemeMode.dark;

    return IconButton(
      key: const Key('theme_toggle_button'), // 🔑 Facilita testes automatizados
      // Mostra um ícone diferente conforme o tema atual
      icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),

      // Alterna entre os temas ao pressionar
      onPressed: () => themeController.toggleTheme(),

      // Tooltip visível ao passar o mouse (acessibilidade)
      tooltip: 'Alternar tema',
    );
  }
}

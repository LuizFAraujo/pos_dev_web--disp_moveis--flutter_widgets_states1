import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/theme_controller.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(
      context,
    ); // Acessa o controller de tema
    final isDark =
        Theme.of(context).brightness ==
        Brightness.dark; // Verifica se o tema atual é escuro

    return IconButton(
      // Ícone muda conforme o tema atual: sol para escuro, lua para claro
      icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),

      // Alterna entre tema claro e escuro ao pressionar
      onPressed: () => themeController.toggleTheme(),
    );
  }
}

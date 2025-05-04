import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/theme_controller.dart';
import '../widgets/header_actions.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ThemeController>(
      context,
    ); // Acessa o controller de tema

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'), // Título da página
        actions: [HeaderActions()], // Ações no cabeçalho (ex: botão de tema)
      ),
      body: ListView(
        children: [
          // Opção de tema claro com botão de rádio
          SettingsTile(
            title: 'Tema claro',
            trailing: Radio<ThemeMode>(
              value: ThemeMode.light,
              groupValue: controller.themeMode,
              onChanged: (mode) {
                if (mode != null) controller.setThemeMode(mode);
              },
            ),
          ),
          // Opção de tema escuro com botão de rádio
          SettingsTile(
            title: 'Tema escuro',
            trailing: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: controller.themeMode,
              onChanged: (mode) {
                if (mode != null) controller.setThemeMode(mode);
              },
            ),
          ),
          // Opção de tema do sistema com botão de rádio
          SettingsTile(
            title: 'Tema do sistema',
            trailing: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: controller.themeMode,
              onChanged: (mode) {
                if (mode != null) controller.setThemeMode(mode);
              },
            ),
          ),
          const Divider(), // Separador visual
          // Opções simbólicas adicionais
          const SettingsTile(title: '🔔 Notificações simbólicas'),
          const SettingsTile(title: '🛑 Limpar curtidas'),
          const SettingsTile(title: '🔄 Redefinir tarefas'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/theme_controller.dart';
import '../widgets/header_actions.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ThemeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        actions: [HeaderActions()], // ❌ Removido "const"
      ),
      body: ListView(
        children: [
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
          const Divider(),
          const SettingsTile(title: '🔔 Notificações simbólicas'),
          const SettingsTile(title: '🛑 Limpar curtidas'),
          const SettingsTile(title: '🔄 Redefinir tarefas'),
        ],
      ),
    );
  }
}

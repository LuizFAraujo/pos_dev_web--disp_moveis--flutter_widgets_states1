import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title; // Título do item de configuração
  final Widget? trailing; // Widget exibido à direita (ex: botão, switch, etc)

  const SettingsTile({super.key, required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title), // Exibe o título
      trailing: trailing, // Exibe o widget à direita, se houver
    );
  }
}

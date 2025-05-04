import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'controllers/theme_controller.dart';

void main() {
  runApp(
    // Inicializa o ThemeController para controle de tema (claro/escuro)
    // e disponibiliza ele para todo o app usando Provider.
    ChangeNotifierProvider(
      create: (_) => ThemeController(),

      // Widget principal da aplicação.
      child: const MyApp(),
    ),
  );
}

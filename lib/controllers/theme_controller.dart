import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // Tema inicial segue o sistema

  ThemeMode get themeMode => _themeMode; // Getter para acessar o modo atual

  // Alterna entre tema claro e escuro
  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notifica os widgets que dependem do tema
  }

  // Define manualmente um modo de tema (claro, escuro ou sistema)
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners(); // Notifica os widgets que dependem do tema
  }
}

import 'package:flutter/material.dart';

// Tema claro da aplicação
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light, // Define brilho como claro
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
  ), // Paleta baseada em cor base azul
  useMaterial3: true, // Usa Material Design 3
);

// Tema escuro da aplicação
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark, // Define brilho como escuro
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blueGrey, // Paleta baseada em azul acinzentado
    brightness: Brightness.dark,
  ),
  useMaterial3: true, // Usa Material Design 3
);

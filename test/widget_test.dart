// test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pos_dev_web_disp_moveis_flutter_widgets_states1/app.dart';
import 'package:pos_dev_web_disp_moveis_flutter_widgets_states1/controllers/theme_controller.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets(
    'Home deve renderizar com título e botão de alternar tema visível',
    (WidgetTester tester) async {
      // Monta o app com Provider para o tema
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (_) => ThemeController(),
          child: const MyApp(),
        ),
      );

      // Aguarda renderização completa
      await tester.pumpAndSettle();

      // Verifica se o título da Home aparece
      expect(
        find.text('Feed de Postagens'),
        findsOneWidget,
        reason: 'Título "Feed de Postagens" não encontrado.',
      );

      // Verifica se o botão de alternar tema aparece com qualquer ícone (lua ou sol)
      final themeToggleIcon =
          find.byIcon(Icons.dark_mode).evaluate().isEmpty
              ? find.byIcon(Icons.light_mode)
              : find.byIcon(Icons.dark_mode);

      expect(
        themeToggleIcon,
        findsOneWidget,
        reason: 'Botão de alternar tema não encontrado.',
      );
    },
  );
}

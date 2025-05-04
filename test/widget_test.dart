import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pos_dev_web_disp_moveis_flutter_widgets_states1/app.dart';
import 'package:pos_dev_web_disp_moveis_flutter_widgets_states1/controllers/theme_controller.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets(
    'Deve renderizar a home com texto inicial e mudar tema ao clicar no botão',
    (WidgetTester tester) async {
      // Monta o app com o provider necessário
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (_) => ThemeController(),
          child: const MyApp(),
        ),
      );

      // Espera a primeira renderização
      await tester.pumpAndSettle();

      // Verifica se o título "InteraHub" aparece (home page)
      expect(find.text('InteraHub'), findsOneWidget);

      // Verifica se o botão de alternar tema está presente (ícone de lua ou sol)
      expect(find.byIcon(Icons.dark_mode), findsOneWidget);

      // Clica no botão de alternar tema
      await tester.tap(find.byIcon(Icons.dark_mode));
      await tester.pumpAndSettle();

      // Após o clique, o ícone deve mudar (alternância de tema)
      expect(find.byIcon(Icons.light_mode), findsOneWidget);
    },
  );
}

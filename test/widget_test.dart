import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:reciclometro_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ReciclometroApp());

    // Aqui você pode adaptar os testes para o seu app.
    // Exemplo: verificar se aparece o texto "Reciclômetro" na tela de login.
    expect(find.text('Reciclômetro'), findsOneWidget);
  });
}

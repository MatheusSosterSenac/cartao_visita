// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cartao_visita/main.dart';

void main() {
  testWidgets('Cartão de Visita renderiza', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CartaoVisita());

    // Verifica se o nome aparece na tela
    expect(find.text('Seu Nome Completo'), findsOneWidget);

    // Verifica se o título aparece na tela
    expect(find.text('Título Profissional'), findsOneWidget);

    // Verifica se o email aparece na tela
    expect(find.text('email@exemplo.com'), findsOneWidget);
  });
}

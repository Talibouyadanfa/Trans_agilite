import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/Interne1.dart';

void main() {
  testWidgets('Selectionner contact pour tranferer un numero de l\'app', (WidgetTester tester) async {
    await tester.pumpWidget(Interne1());


    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);

    expect(find.widgetWithText(Container, 'Sélectionner le contact',),findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Interne',), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Externe',), findsOneWidget);
    expect(find.widgetWithText(AppBar, 'Transfert',), findsOneWidget);
  });
}
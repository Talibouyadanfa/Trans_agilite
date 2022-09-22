import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/Connexion1.dart';

void main() {
  testWidgets('Entrer Prenom et nom', (WidgetTester tester) async {
    await tester.pumpWidget(Connexion1());
    final Finder submit = find.byType(ElevatedButton);
    await tester.dragUntilVisible(
      submit, // what you want to find
      find.byType(SingleChildScrollView), // widget you want to scroll
      const Offset(0, 50), // delta to move
    );
    await tester.tap(submit);
    await tester.pump();

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.text('Veuillez entrer votre numéro',skipOffstage: true), findsOneWidget);
  });
}
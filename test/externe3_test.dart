import 'package:demo/Externe3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/depot2.dart';

void main() {
  testWidgets('ne pas entrer numero et nom destinataire va retourner que c\'est vide ', (WidgetTester tester) async {
    await tester.pumpWidget(Externe3());
    final Finder submit = find.byType(ElevatedButton);
    await tester.dragUntilVisible(
      submit, // what you want to find
      find.byType(ElevatedButton), // widget you want to scroll
      const Offset(0, 50), // delta to move
    );
    await tester.tap(submit);
    await tester.pump();

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.widgetWithText(Form,'Valider'), findsOneWidget);
    expect(find.widgetWithText(Form,'Entrez votre code secret',), findsOneWidget);
    expect(find.widgetWithText(AppBar,'Transfert',), findsOneWidget);

  });
}
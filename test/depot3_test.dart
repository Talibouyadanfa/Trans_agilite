import 'package:demo/depot4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/depot2.dart';

void main() {
  testWidgets('ne pas entrer numero et nom destinataire va retourner que c\'est vide ', (WidgetTester tester) async {
    await tester.pumpWidget(Depot4());
    final Finder submit = find.byType(ElevatedButton);
    await tester.dragUntilVisible(
      submit, // what you want to find
      find.byType(ElevatedButton), // widget you want to scroll
      const Offset(0, 50), // delta to move
    );
    await tester.tap(submit);
    await tester.pump();

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.text('Veuillez entrer le montant pour procéder au transfert',skipOffstage: true), findsOneWidget);
    expect(find.widgetWithText(Form,'Saisir Montant',), findsOneWidget);
    expect(find.widgetWithText(Form,'FCFA',), findsOneWidget);
    expect(find.widgetWithText(TextFormField,'montant..',), findsOneWidget);
    expect(find.widgetWithText(AppBar,'Dépôt',), findsOneWidget);

  });
}
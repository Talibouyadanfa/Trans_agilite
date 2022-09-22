import 'package:demo/depot3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/Externe1.dart';

void main() {
  testWidgets('ne pas entrer numero et nom destinataire va retourner que c\'est vide ', (WidgetTester tester) async {
    await tester.pumpWidget(Externe1());
    final Finder submit = find.byType(ElevatedButton);
    await tester.dragUntilVisible(
      submit, // what you want to find
      find.byType(ElevatedButton), // widget you want to scroll
      const Offset(0, 50), // delta to move
    );
    await tester.tap(submit);
    await tester.pump();

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.text('Veuillez saisir son numéro dans le champ ci-dessus',skipOffstage: true), findsOneWidget);
    expect(find.text('Veuillez bien entrer le nom du destinataire',skipOffstage: true), findsOneWidget);
    expect(find.widgetWithText(Form,'Entrez le nom du destinataire',), findsOneWidget);
    expect(find.widgetWithText(Form,'Entrez le numéro Orange Money',), findsOneWidget);
    expect(find.widgetWithText(TextFormField,'nom ..',), findsOneWidget);
    expect(find.widgetWithText(TextFormField,'numéro ..',), findsOneWidget);
    expect(find.widgetWithText(AppBar,'Transfert',), findsOneWidget);

  });
}
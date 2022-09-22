import 'package:demo/depot5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo/depot2.dart';

void main() {
  testWidgets('ne pas entrer numero et nom destinataire va retourner que c\'est vide ', (WidgetTester tester) async {
    await tester.pumpWidget(Depot5());
    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.text('Terminer',skipOffstage: true), findsOneWidget);
    expect(find.widgetWithText(Form,'Votre transfert de 25 000 FCFA a bien réussi !',), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

  });
}
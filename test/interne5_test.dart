import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo/Interne5.dart';

void main() {
  testWidgets('Tranfert est reussi ', (WidgetTester tester) async {
    await tester.pumpWidget(Interne5());
    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.text('Terminer',skipOffstage: true), findsOneWidget);
    expect(find.widgetWithText(Form,'Votre transfert de 25 000 FCFA à Abdou SAKHO a bien réussi !',), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);//Votre transfert de $montant FCFA à $receveur a bien réussi !
    expect(find.byType(ElevatedButton), findsOneWidget);

  });
}
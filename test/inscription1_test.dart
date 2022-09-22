import 'package:demo/Inscription2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/depot2.dart';

void main() {
  testWidgets('Incription ', (WidgetTester tester) async {
    await tester.pumpWidget(Code());

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.widgetWithText(Form,'Suivant'), findsOneWidget);
    expect(find.widgetWithText(Form,'Entrez le code de validation',), findsOneWidget);
    expect(find.widgetWithText(Form,'Renvoyer SMS',), findsOneWidget);

  });
}
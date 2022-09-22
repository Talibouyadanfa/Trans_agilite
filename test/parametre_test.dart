import 'package:demo/parametre1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Find parametre widget', (WidgetTester tester) async {
    await tester.pumpWidget(Param1());


    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);

    expect(find.widgetWithText(Form,'fatima Sow',), findsOneWidget);
    expect(find.widgetWithText(ListTile,'Changer votre code secret'), findsOneWidget);
    expect(find.widgetWithText(ListTile,'Deconnexion'), findsOneWidget);
    expect(find.widgetWithText(ListTile,'Aide'), findsOneWidget);
    expect(find.widgetWithText(ListTile,'Langue'), findsOneWidget);

  });
}
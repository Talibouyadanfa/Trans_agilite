import 'package:demo/Interne2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Search a Name', (WidgetTester tester) async {
    // Build the widget.
    await tester.pumpWidget(const Interne2());

    // Enter 'Talibouya Danfa' into the TextField.
    await tester.enterText(find.widgetWithText(TextField,'Search'), 'Talibouya Danfa');
    await tester.pump();
    // Expect to find the item on screen
    expect(find.text('Aucun résultat trouvé'), findsOneWidget );
    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    //expect(find.text('Veuillez entrer le montant pour procéder au transfert',skipOffstage: true), findsOneWidget);
    expect(find.widgetWithText(AppBar,'Transfert',), findsOneWidget);

  });
}
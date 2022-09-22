import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/depot1.dart';

void main() {
  testWidgets('Test pour voir les differents type de tranfert', (
      WidgetTester tester) async {
    await tester.pumpWidget(Depot1());

    await tester.pump();

    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);

    expect(find.byType(IconButton), findsWidgets);
    expect(find.widgetWithText(AppBar, 'Dépôt',), findsOneWidget);
  });
}
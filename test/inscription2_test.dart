import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/Inscription2.dart';
void main() {
  testWidgets('Entrer codepin and next', (tester) async {
    // Build the widget.
    await tester.pumpWidget(const Code());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextField), 'pap');

    // Tap the add button.
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget with the new item.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('pap'), findsOneWidget);

  });
}

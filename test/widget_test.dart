// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo/main.dart';

void main() {
  testWidgets('Add a number and continue', (tester) async {
    // Build the widget.
    await tester.pumpWidget(const MyApp());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextFormField), 'hi');

    // Tap the add button.
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget with the new item.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('hi'), findsOneWidget);

  });
}

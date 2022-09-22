import 'package:demo/Interne4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('changer code', (WidgetTester tester) async {
    await tester.pumpWidget(Interne4());


    // Rebuild the widget with the new item.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.widgetWithText(OTPDigitTextFieldBox,'1'), findsOneWidget);
    expect(find.widgetWithText(OTPDigitTextFieldBox,'2'), findsOneWidget);
    expect(find.widgetWithText(OTPDigitTextFieldBox,'3'), findsOneWidget);
    expect(find.widgetWithText(OTPDigitTextFieldBox,'4'), findsOneWidget);
    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    expect(find.widgetWithText(Form,'Entrez votre code secret',), findsOneWidget);
    expect(find.widgetWithText(AppBar,'Transfert'), findsOneWidget);

  });
}
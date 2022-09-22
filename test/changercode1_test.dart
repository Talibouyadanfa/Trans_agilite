import 'package:demo/changerCode1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('changer code', (WidgetTester tester) async {
    // Rebuild the widget with the new item.
    //await tester.pump();

    // Expect to find the item on screen.
    expect(find.widgetWithText(EnterOTP, ''), findsOneWidget);
    //expect(find.widgetWithText(OTPDigitTextFieldBox,'2'), findsOneWidget);
    //expect(find.widgetWithText(OTPDigitTextFieldBox,'3'), findsOneWidget);
    //expect(find.widgetWithText(OTPDigitTextFieldBox,'4'), findsOneWidget);
    //expect(find.text('Veuillez entrer votre Prénom'), findsOneWidget);
    //expect(find.widgetWithText(Form,'Entrez votre code secret',), findsOneWidget);
    //expect(find.widgetWithText(AppBar,'Transfert'), findsOneWidget);

  });
}

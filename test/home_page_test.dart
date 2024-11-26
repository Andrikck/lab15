import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab15/home_page.dart';

void main() {
  testWidgets('Text is displayed correctly on the Home Page', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MyHomePage()));

    expect(find.text('IPZ-31: Svyrydiuk\'s last Flutter App'), findsOneWidget);
  });


  testWidgets('FloatingActionButton with correct icon exists', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MyHomePage()));

    final fab = find.byType(FloatingActionButton);
    expect(fab, findsOneWidget);

    final icon = find.byIcon(Icons.pets);
    expect(icon, findsOneWidget);
  });
}

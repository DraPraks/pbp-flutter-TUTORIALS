// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:football_news/main.dart';

void main() {
  testWidgets('Login page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    // Wait for animations and frames to settle
    await tester.pumpAndSettle();

    // The Login page uses 'Login' as the AppBar title, header and button label
    expect(find.text('Login'), findsNWidgets(3));

    // Two TextFields: Username and Password
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));

    // There should be a Login button
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);
  });
}

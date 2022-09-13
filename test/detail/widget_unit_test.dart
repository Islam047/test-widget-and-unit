import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_unit_widget/main.dart';

void main() {
  testWidgets("Test Widget ", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(GridView), findsNothing);
    expect(find.text("Add post"), findsOneWidget);
    expect(find.text("setState"), findsNothing);
    expect(find.text("Islam N 1"), findsNothing);
  });
}

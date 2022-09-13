import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_unit_widget/main.dart';

void main(){
  testWidgets("Test Widget ", (widgetTester) async{
    await widgetTester.pumpWidget(const MyApp());
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(GridView), findsNothing);
    expect(find.text("setState"), findsOneWidget);
    expect(find.text("setState"), findsNWidgets(1));
    expect(find.text("Islam N 1"), findsNothing);

  });
}
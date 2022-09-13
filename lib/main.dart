import 'package:flutter/material.dart';
import 'package:testing_unit_widget/pages/detail_page.dart';
import 'package:testing_unit_widget/pages/home_page.dart';

import 'model/post_model.dart';

void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailPage(),
    );
  }
}


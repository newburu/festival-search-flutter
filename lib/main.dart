import 'package:flutter/material.dart';
import 'package:festival_search/view/content_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contents',
      theme: ThemeData(primarySwatch: Colors.lime),
      home: ContentPage(),
    );
  }
}

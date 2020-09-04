import 'package:flutter/material.dart';
import 'package:wallet/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "e-wallet",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'App Corresponsal Bancario Bancolombia',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

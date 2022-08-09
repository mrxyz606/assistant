import 'package:flutter/material.dart';
import 'package:raamy/Screens/HomeScreen.dart';
import 'package:raamy/second.dart';

import 'Screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Signup',

      home: HomeScreen(),
    );
  }
}

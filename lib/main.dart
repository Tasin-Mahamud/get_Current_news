import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
    },
  ));
}

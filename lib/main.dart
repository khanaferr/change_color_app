import 'package:color_change_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

/*
I need a project that has two buttons that change the background color and direction when they are pressed.

What is needed:
  -background with gradient colors
  -two buttons to change the background color and direction
  -state management to store which color and direction is currently selected
  buttons: stateless widgets
  screen: stateful widget

*/

void main() {
  runApp(MyGradientApp());
}

class MyGradientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Gradient Background App', home: HomeScreen());
  }
}

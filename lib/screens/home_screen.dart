import 'package:color_change_app/utils/gradient_data.dart';
import 'package:color_change_app/widgets/color_button.dart';
import 'package:color_change_app/widgets/direction_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: gradientDirections[directionIndex],
            end:
                gradientDirections[(directionIndex + 1) %
                    gradientDirections.length],
            colors: gradientColors[colorsIndex],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorButton(onPressed: changeColor),
              SizedBox(height: 20),
              DirectionButton(onPressed: changeDirection),
            ],
          ),
        ),
      ),
    );
  }

  int colorsIndex = 0;
  int directionIndex = 0;

  void changeColor() {
    setState(() {
      colorsIndex = (colorsIndex + 1) % gradientColors.length;
    });
  }

  void changeDirection() {
    setState(() {
      directionIndex = (directionIndex + 1) % gradientDirections.length;
    });
  }
}

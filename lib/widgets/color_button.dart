import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ColorButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Change Color'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
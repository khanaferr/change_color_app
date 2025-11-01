import 'package:flutter/material.dart';

class DirectionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DirectionButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Change Direction'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}

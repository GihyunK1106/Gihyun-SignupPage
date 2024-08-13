import 'package:flutter/material.dart';

//custom button
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final size;
  final VoidCallback onPressed;

  const CustomElevatedButton({required this.text, required this.size, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, size),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular (20),
        ),
        // RoundedRectangleBorder
      ),
      onPressed: onPressed, child: Text('$text'),
    );
  }
}
// ElevatedButton
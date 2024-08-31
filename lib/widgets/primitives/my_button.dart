import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final List<Widget> label;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
        ),
        child: Row(
          children: label,
        ),
      ),
    );
  }
}
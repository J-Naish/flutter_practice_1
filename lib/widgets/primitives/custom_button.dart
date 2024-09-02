import 'package:flutter/material.dart';


class CustomButtonTheme {
  static const String primary = 'primary';
  static const String onPrimary = 'onPrimary';
}

class CustomButton extends StatelessWidget {
  final String label;
  final String theme;
  final VoidCallback? onPressed;


  const CustomButton({
    Key? key,
    required this.label,
    required this.theme,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            theme == CustomButtonTheme.primary
              ? Colors.blue
              : Colors.white,
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            theme == CustomButtonTheme.primary
              ? Colors.white
              : Colors.blue,
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 16),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(
                color: Colors.blue,
                width: theme == CustomButtonTheme.primary ? 0 : 1,
              ),
            ),
          ),
          alignment: Alignment.center,
        ),
        child: Text(label),
      ),
    );
  }
}

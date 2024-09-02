import 'package:flutter/material.dart';
import 'header.dart';

class ScreenTemplate extends StatelessWidget {
  final Widget body;

  const ScreenTemplate({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Header(),
      body: Column(
        children: [
          Expanded(child: body),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

class ScreenTemplate extends StatelessWidget {
  final List<Widget> body;

  const ScreenTemplate({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Header(),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...body,
              const Footer(),
            ],
          ),
        )
      ),
    );
  }
}

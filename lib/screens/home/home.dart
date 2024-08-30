import 'package:flutter/material.dart';
import '../../widgets/layout/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(height: 64),
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}

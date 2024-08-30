import 'package:flutter/material.dart';
import '../../widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}

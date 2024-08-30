import 'package:flutter/material.dart';
import '../../widgets/layout/header.dart';
import '../../widgets/layout/tab_menu.dart';
import '../../widgets/primitives/text_utilities.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Removed const from here
      appBar: const Header(height: 64),
      body: Center(
        child: Column(
          children: [
            const TabMenu(),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.only(left: 128.0),
                      child: LargeTitle(title: '人気のコンテンツ'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
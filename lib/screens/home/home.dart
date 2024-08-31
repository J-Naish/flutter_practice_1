import 'package:flutter/material.dart';
import '../../widgets/layout/header.dart';
import '../../widgets/layout/tab_menu.dart';
import './popular_contents_section.dart';
import './pupular_category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const horizontalPadding = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    PopularContentsSection(),
                    SizedBox(height: 32),
                    PopularCategorySection(),
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

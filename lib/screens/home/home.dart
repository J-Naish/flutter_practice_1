import 'package:flutter/material.dart';
import '../../widgets/layout/header.dart';
import '../../widgets/layout/tab_menu.dart';
import '../../widgets/primitives/content_card.dart';
import './section.dart';

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
                    Section(
                      title:  '人気のセクション',
                      child: Row(
                        children: [
                          ContentCard(
                            title: 'タイトル',
                            price: 1200,
                            rating: 4.2,
                            reviewCount: 120,
                          ),
                          SizedBox(width: 24),
                          ContentCard(
                            title: 'タイトル',
                            price: 1200,
                            rating: 4.2,
                            reviewCount: 120,
                          ),
                          SizedBox(width: 24),
                          ContentCard(
                            title: 'タイトル',
                            price: 1200,
                            rating: 4.2,
                            reviewCount: 120,
                          ),
                        ],
                      )
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

import 'package:flutter/material.dart';
import '../../widgets/layout/header.dart';
import '../../widgets/layout/tab_menu.dart';
import '../../widgets/primitives/text_utilities.dart';
import '../../widgets/primitives/content_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const horizontalPadding = 80.0;

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
                      padding: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding),
                      child: LargeTitle(title: '人気のコンテンツ'),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ContentCard(title: "コンテンツ名", price: 12000, rating: 4, reviewCount: 138),
                        ],
                      ),
                    )
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

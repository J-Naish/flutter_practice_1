import 'package:flutter/material.dart';
import '../../widgets/layout/tab_menu.dart';
import '../../widgets/layout/screen_template.dart';
import 'popular_contents_section.dart';
import 'popular_category_section.dart';
import 'recommended_contents_section.dart';
import '../../widgets/layout/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      body: Stack(
        children: [
          Positioned.fill(
            top: 56,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
                  PopularContentsSection(),
                  SizedBox(height: 32),
                  PopularCategorySection(),
                  SizedBox(height: 32),
                  RecommendedContentsSection(),
                  SizedBox(height: 32),
                  Footer(),
                ],
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child:  ColoredBox(
              color: Colors.white,
              child: TabMenu(),
            ),
          ),
        ],
      )
    );
  }
}

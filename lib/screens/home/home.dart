import 'package:flutter/material.dart';
import '../../widgets/layout/tab_menu.dart';
import '../../widgets/layout/screen_template.dart';
import 'popular_contents_section.dart';
import 'popular_category_section.dart';
import 'recommended_contents_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      body: [
        TabMenu(),
        SizedBox(height: 32),
        PopularContentsSection(),
        SizedBox(height: 32),
        PopularCategorySection(),
        SizedBox(height: 32),
        RecommendedContentsSection(),
      ],
    );
  }
}

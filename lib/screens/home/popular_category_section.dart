import 'package:flutter/material.dart';
import './section.dart';
import '../../widgets/primitives/category_card.dart';

const popularCategories = [
  'プログラミング',
  'デザイン',
  '英語',
  'ビジネス',
  'その他',
  'プログラミング',
  'デザイン',
  '英語',
  'ビジネス',
  'その他',
  'プログラミング',
  'デザイン',
  '英語',
  'ビジネス',
  'その他',
  'プログラミング',
  'デザイン',
  '英語',
  'ビジネス',
];

class PopularCategorySection extends StatelessWidget {
  const PopularCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: '人気のカテゴリー',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildCategoryColumns(),
        ),
      ),
    );
  }

  List<Widget> _buildCategoryColumns() {
    List<Widget> columns = [];
    for (int i = 0; i < popularCategories.length; i += 2) {
      columns.add(
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              CategoryCard(title: popularCategories[i]),
              const SizedBox(height: 16),
              if (i + 1 < popularCategories.length)
                CategoryCard(title: popularCategories[i + 1])
              else
                const SizedBox(width: 240),
            ],
          ),
        )
      );
    }
    return columns;
  }

}

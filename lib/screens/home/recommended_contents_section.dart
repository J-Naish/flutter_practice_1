import 'package:flutter/material.dart';
import 'package:flutter_practice_1/screens/home/section.dart';
import '../../widgets/primitives/category_card.dart';

class RecommendedContentsSection extends StatelessWidget {
  const RecommendedContentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: 'おすすめのコンテンツ',
      child: Placeholder(),
    );
  }
}
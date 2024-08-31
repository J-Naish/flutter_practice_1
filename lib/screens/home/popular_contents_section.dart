import 'package:flutter/material.dart';
import '../../model/contents.dart';
import '../../widgets/primitives/content_card.dart';
import './section.dart';

const popularContents = [
  Content(
    title: '動画編集講座',
    price: 1200,
    rating: 4.2,
    reviewCount: 120,
  ),
  Content(
    title: 'イラストレーション講座',
    price: 1500,
    rating: 4.5,
    reviewCount: 150,
  ),
  Content(
    title: 'Webデザイン講座',
    price: 1800,
    rating: 4.8,
    reviewCount: 180,
  ),
  Content(
    title: 'プログラミング講座',
    price: 2000,
    rating: 4.9,
    reviewCount: 200,
  ),
  Content(
    title: '英語学習講座',
    price: 2200,
    rating: 4.7,
    reviewCount: 220,
  ),
];

class PopularContentsSection extends StatelessWidget {
  const PopularContentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: '人気のセクション',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: popularContents.map((content) =>
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ContentCard(content: content),
            )
          ).toList(),
        ),
      )
    );
  }
}

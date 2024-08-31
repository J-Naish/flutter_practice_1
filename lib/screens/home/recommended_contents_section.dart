import 'package:flutter/material.dart';
import 'package:flutter_practice_1/screens/home/section.dart';
import '../../widgets/primitives/content_card.dart';
import '../../model/contents.dart';

class RecommendedContentsSection extends StatelessWidget {
  const RecommendedContentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'おすすめのコンテンツ',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildContentsRows(),
      ),
    );
  }

  List<Widget> _buildContentsRows() {
    List<Widget> rows = [];
    for (int i = 0; i < recommendedContents.length; i += 4) {
      rows.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Row(
            children: [
              ContentCard(
                title: recommendedContents[i].title,
                price: recommendedContents[i].price,
                rating: recommendedContents[i].rating,
                reviewCount: recommendedContents[i].reviewCount,
              ),
              const SizedBox(width: 72),
              if (i + 1 < recommendedContents.length)
                ContentCard(
                  title: recommendedContents[i + 1].title,
                  price: recommendedContents[i + 1].price,
                  rating: recommendedContents[i + 1].rating,
                  reviewCount: recommendedContents[i + 1].reviewCount,
                ),
              const SizedBox(width: 72),
              if (i + 2 < recommendedContents.length)
                ContentCard(
                  title: recommendedContents[i + 2].title,
                  price: recommendedContents[i + 2].price,
                  rating: recommendedContents[i + 2].rating,
                  reviewCount: recommendedContents[i + 2].reviewCount,
                ),
              const SizedBox(width: 72),
              if (i + 3 < recommendedContents.length)
                ContentCard(
                  title: recommendedContents[i + 3].title,
                  price: recommendedContents[i + 3].price,
                  rating: recommendedContents[i + 3].rating,
                  reviewCount: recommendedContents[i + 3].reviewCount
                )
              else
                const SizedBox(width: 16),
            ],
          ),
        ),
      );
    }
    return rows;
  }

}


const recommendedContents = [
  Content(
    title: 'Flutter入門',
    price: 4800,
    rating: 4.8,
    reviewCount: 2321,
  ),
  Content(
    title: 'Dart入門',
    price: 3800,
    rating: 4.5,
    reviewCount: 321,
  ),
  Content(
    title: 'Python入門',
    price: 4200,
    rating: 3.2,
    reviewCount: 21,
  ),
  Content(
    title: 'Django入門',
    price: 1900,
    rating: 2.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Ruby入門',
    price: 2800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Ruby on Rails入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'JavaScript入門',
    price: 2800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'React入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Vue.js入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Angular入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'TypeScript入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Go入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Rust入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Kotlin入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Swift入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'iOSアプリ開発入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Androidアプリ開発入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'AWS入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'GCP入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Azure入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Firebase入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Docker入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'Kubernetes入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'CI/CD入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'TDD入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'DDD入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'クリーンアーキテクチャ入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'マイクロサービス入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'サーバーレス入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'モノリスからマイクロサービスへ',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
  Content(
    title: 'モバイルファースト入門',
    price: 3800,
    rating: 4.1,
    reviewCount: 321,
  ),
];
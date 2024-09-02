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
              ContentCard(content: recommendedContents[i]),
              const SizedBox(width: 72),
              if (i + 1 < recommendedContents.length)
                ContentCard(content: recommendedContents[i + 1]),
              const SizedBox(width: 72),
              if (i + 2 < recommendedContents.length)
                ContentCard(content: recommendedContents[i + 2]),
              const SizedBox(width: 72),
              if (i + 3 < recommendedContents.length)
                ContentCard(content: recommendedContents[i + 3])
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

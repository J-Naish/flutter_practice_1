import 'package:flutter/material.dart';
import '../../model/contents.dart';
import '../../widgets/primitives/content_card.dart';
import './section.dart';


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

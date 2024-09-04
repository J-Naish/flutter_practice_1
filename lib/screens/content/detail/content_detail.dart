import 'package:flutter/material.dart';
import '../../../model/contents.dart';
import '../../../widgets/layout/screen_template.dart';

class ContentDetail extends StatelessWidget {
  final Content content;

  const ContentDetail({
    Key? key,
    required this.content
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../widgets/primitives/text_utilities.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget child;

  const Section({
    Key? key,
    required this.title,
    required this.child
  }) : super(key: key);

  static const horizontalPadding = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: LargeTitle(title: title),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: child,
            )
          ],
        ),
    );
  }
}

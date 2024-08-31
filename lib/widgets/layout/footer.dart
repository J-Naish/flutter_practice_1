import 'package:flutter/material.dart';
import 'package:flutter_practice_1/constants/styles.dart';
import '../../widgets/primitives/logo.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(
          top: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Logo(),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FooterNavigationItem(
                title: 'Company',
                items: [
                  'About Us',
                  'Contact Us',
                  'Careers',
                ],
              ),
              SizedBox(width: 120),
              FooterNavigationItem(
                title: 'Community',
                items: [
                  'Blog',
                  'Forum',
                ],
              ),
              SizedBox(width: 120),
              FooterNavigationItem(
                title: 'Legal',
                items: [
                  'Privacy Policy',
                  'Terms of Service',
                  'Trademark Policy',
                  'Cookie Policy',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class FooterNavigationItem extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterNavigationItem({
    Key? key,
    required this.title,
    required this.items
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) => 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(item),
            )
          ).toList(),
        ),
      ],
    );
  }
}
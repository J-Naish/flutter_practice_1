import 'package:flutter/material.dart';
import 'package:flutter_practice_1/constants/styles.dart';
import '../../widgets/primitives/logo.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Footer1(),
        Footer2(),
      ],
    );
  }
}


class Footer1 extends StatelessWidget {
  const Footer1({Key? key}) : super(key: key);

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
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800])),
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



class Footer2 extends StatelessWidget {
  const Footer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('クッキー設定', style: TextStyle(color: Colors.white, fontSize: 14)),
              SizedBox(height: 8),
              Text('ヘルプとサポート', style: TextStyle(color: Colors.white, fontSize: 14)),
              SizedBox(height: 8),
              Text('アクセシビリティ', style: TextStyle(color: Colors.white, fontSize: 14)),
              SizedBox(height: 8),
              Text('特定商取引法に基づく表記', style: TextStyle(color: Colors.white, fontSize: 14)),
              SizedBox(height: 24),
              Logo(),
            ],
          ),
          Container(
            width: 88,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
              children: [
                Icon(Icons.circle, color: Colors.black, size: 20),
                SizedBox(width: 4),
                Text("日本語"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
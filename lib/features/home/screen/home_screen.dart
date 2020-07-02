import 'dart:ui';

import 'package:Toutly/features/home/widgets/feed_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final items1 = [
    Image.asset(
      'assets/images/item_pic1.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic2.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic3.png',
      fit: BoxFit.cover,
    ),
  ];

  final items2 = [
    Image.asset(
      'assets/images/item_pic2.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic3.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic1.png',
      fit: BoxFit.cover,
    ),
  ];

  final items3 = [
    Image.asset(
      'assets/images/item_pic3.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic1.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/item_pic2.png',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FeedItem(
          name: 'Michael Rodriguez',
          items: items1,
        ),
        FeedItem(
          name: 'John Doe',
          items: items2,
        ),
        FeedItem(
          name: 'Jane Doee',
          items: items3,
        ),
        FeedItem(
          name: 'Test McMuffin',
          items: items1,
        ),
      ],
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

final kPrimaryColor = Color(0XFF29960F);

class AppConstants {
  static const codeErrorAuthDenied = 'ERROR_AUTHORIZATION_DENIED';
  static const codeErrorAbortedByUser = 'ERROR_ABORTED_BY_USER';

  static const messageErrorAuthDenied =
      'There was a problem in serving your request.';
  static const messageErrorAbortedByUser = 'Sign in aborted by user.';

  static const List<String> categoryList = [
    'Apparel & Accessories',
    'Arts & Entertainment',
    'Baby & Toddler',
    'Business & Industrial',
    'Camera & Optics',
    'Electronics',
    'Food & Beverages',
    'Furniture',
    'Hardware',
    'Health & Beauty',
    'Home & Garden',
    'Luggage & Bags',
    'Media',
    'Office Supplies',
    'Software',
    'Sporting Goods',
    'Toys & Games',
    'Vehicles & Parts',
  ];

  static const List<String> privacyList = [
    'Yes',
    'No',
  ];

  static const List<String> filterByTimeList = [
    'All listings',
    'The last 24h',
    'The last 7 days',
    'The last 30 days',
  ];
}

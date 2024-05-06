/*
* Create by : Mochammad Faisal
* Create at : 2024-05-06 18:47:07
* Update at : 2024-05-06 18:47:09
*/

import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final Color color;
}

import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    @required this.title,
    this.color = Colors.orange,
    @required this.id,
  });
}

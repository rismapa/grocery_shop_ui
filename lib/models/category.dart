import 'package:flutter/material.dart';

class Category {
  final String image;
  final String title;
  final Color? color;

  Category({required this.image, required this.title, required this.color});
}

List<Category> categories = [
  Category(
      image: "assets/images/carrot.png",
      title: "Vegetables",
      color: Colors.orange[100]),
  Category(
      image: "assets/images/meat.png", title: "Meat", color: Colors.brown[100]),
  Category(
      image: "assets/images/avocado-.png",
      title: "Fruits",
      color: Colors.green[100]),
];

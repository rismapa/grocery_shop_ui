import 'package:flutter/material.dart';

class Order {
  final String image;
  final String title;
  final Color? color;
  final String? date;
  final int price;
  final int qty;

  Order(
      {required this.image,
      required this.title,
      required this.color,
      this.date,
      required this.price,
      required this.qty});
}

List<Order> orders = [
  Order(
      qty: 1,
      price: 30,
      date: "30 Aug, 2024",
      image: "assets/images/carrot.png",
      title: "Carrot",
      color: Colors.orange[100]),
  Order(
      qty: 1,
      price: 30,
      date: "30 Aug, 2024",
      image: "assets/images/avocado-.png",
      title: "Avocado",
      color: Colors.green[100]),
  Order(
      qty: 1,
      price: 30,
      date: "30 Aug, 2024",
      image: "assets/images/mango.png",
      title: "Mango",
      color: Colors.orange[100]),
];

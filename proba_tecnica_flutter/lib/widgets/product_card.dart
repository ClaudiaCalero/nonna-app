import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;

  ProductCard({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(title),
          Text('\$€price'),
        ],
        ),
    );
  }
}
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      elevation: 0,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 5),
            Center(
              child: Image.asset(
                image,
                height: 160,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

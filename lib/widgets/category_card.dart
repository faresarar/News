import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/sports.avif"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: const Center(
          child: Text(
            "Sports",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

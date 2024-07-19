import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
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

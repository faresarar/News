import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen( {super.key , required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(),
    );
  }
}

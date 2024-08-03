import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen( {super.key});
  //final String category;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder()
        ],
      ),
    );
  }
}

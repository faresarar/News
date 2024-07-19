import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                " Cloud",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          backgroundColor: Colors
              .transparent, // to make it transparent and take color of body
          elevation: 0, // to remove shadow
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              CategoriesListView(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              NewsListView(),
            ],
          )
          /*Column(
            children: [
              CategoriesListView(),
              SizedBox(
                height: 16,
              ),
              NewsListView(),
            ],
          ),*/
        ));
  }
}

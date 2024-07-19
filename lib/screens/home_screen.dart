import 'package:flutter/material.dart';
import '../widgets/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        body: const NewsListView());
  }
}


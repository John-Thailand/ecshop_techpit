import 'package:ecshop_techpit/pages/home_page/home_header.dart';
import 'package:ecshop_techpit/pages/home_page/item_categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Techpit Sports'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: const [
          HomeHeader(),
          ItemCategories(),
        ],
      ),
    );
  }
}

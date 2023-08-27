import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome, Taro.',
              style: TextStyle(fontSize: 28),
            ),
            Text(
              'Summer Collection 2022 is now available.',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

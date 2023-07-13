import 'package:flutter/material.dart';

// app.dart Flutter アプリケーションとしての Widget のスタート地点
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

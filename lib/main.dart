import 'package:flutter/material.dart';
import 'package:ecshop_techpit/app.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// main.dart runApp 実行以前に必要な実装の集まり
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

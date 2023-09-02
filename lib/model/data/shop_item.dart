import 'dart:convert' show jsonDecode;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecshop_techpit/model/data/item/item.dart';

final shopItemIdsProvider = Provider((ref) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  // ローディング状態やエラー状態については無視し、単にデータの受け取りを待つという実装で済ませます。
  // この様な場合は whenData を使います。
  return items.whenData((items) => items.map((item) => item.id).toList());
});

final shopItemProvider = FutureProvider((ref) async {
  final data = await rootBundle.loadString('assets/mock.json');
  final json = (await jsonDecode(data) as List).cast<Map<String, dynamic>>();
  final items = json.map(Item.fromJson).toList();
  return items;
});

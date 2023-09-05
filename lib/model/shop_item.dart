import 'dart:convert' show jsonDecode;
import 'package:ecshop_techpit/model/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecshop_techpit/model/data/item/item.dart';
import 'package:http/http.dart';

final shopItemIdsForSelectedCategoryProvider = Provider((ref) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  // ローディング状態やエラー状態については無視し、単にデータの受け取りを待つという実装で済ませます。
  // この様な場合は whenData を使います。
  return items.whenData((items) => items
      .where((item) => item.category == selectedCategory)
      .map((item) => item.id)
      .toList());
});

final shopItemForIdProvider = Provider.family((ref, String id) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  return items.whenData((items) => items.firstWhere((item) => item.id == id));
});

final shopItemProvider = FutureProvider((ref) async {
  final result = await Client().get(Uri.parse(
      'https://run.mocky.io/v3/37aa65ea-e6f6-4ca3-8e73-a3688499d51f'));
  final json = (jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
  final items = json.map(Item.fromJson).toList();
  return items;
});

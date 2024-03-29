// ignore: unused_import
import 'package:ecshop_techpit/model/category.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    required String id,
    required String name,
    required String imageUrl,
    required String description,
    required ItemCategory category,
    required List<String> options,
    required int price,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

import 'package:flutter/material.dart';
import 'package:food/models/food_item.dart';

class CartProvider with ChangeNotifier {
  final List<FoodItem> _items = [];

  List<FoodItem> get items => _items;

  void addItem(FoodItem item) {
    _items.add(item);
    notifyListeners();
  }

  int get itemCount => _items.length;
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}

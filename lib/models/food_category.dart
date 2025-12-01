import 'package:food/models/food_item.dart';

class FoodCategory {
  final String title;
  final String image;
  final List<FoodItem> items;

  FoodCategory({required this.title, required this.image, required this.items});
}

import 'package:flutter/material.dart';
import 'package:food/models/food_category.dart';
import 'package:food/screen/food_card.dart';
import 'package:food/screen/food_details.dart';
import 'package:food/shared/styled_text.dart';

class CategoryScreen extends StatelessWidget {
  final FoodCategory category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledText2(category.title)),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: category.items.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 260,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder:
            (context, i) => FoodCard(
              item: category.items[i],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FoodDetails(item: category.items[i]),
                  ),
                );
              },
            ),
      ),
    );
  }
}

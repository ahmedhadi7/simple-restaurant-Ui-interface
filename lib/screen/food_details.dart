import 'package:flutter/material.dart';
import 'package:food/models/food_item.dart';
import 'package:food/providers/cart_provider.dart';
import 'package:food/shared/styled_text.dart';
import 'package:provider/provider.dart';
//import 'providers/cart_provider.dart';

class FoodDetails extends StatelessWidget {
  final FoodItem item;
  const FoodDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledText2(item.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(item.image, height: 200, fit: BoxFit.cover),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText2(item.name),
                const SizedBox(height: 8),
                StyledText2(item.description),
                const SizedBox(height: 12),
                Text(
                  "السعر ${item.price}",
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const StyledText2("طلب الان"),

              onPressed: () {
                Provider.of<CartProvider>(context, listen: false).addItem(item);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تم إضافة ${item.name} إلى السلة")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

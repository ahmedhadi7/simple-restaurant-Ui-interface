import 'package:flutter/material.dart';
import 'package:food/models/food_category.dart';
import 'package:food/models/food_item.dart';
import 'package:food/screen/category_card.dart';
import 'package:food/screen/category_screen.dart';
import 'package:food/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final categories = [
    FoodCategory(
      title: 'بركر',
      image: 'assets/img/burger1.jpg',
      items: [
        FoodItem(
          name: ' بركر لحم دبل',
          description: 'لحم طازج دبل ومكونات شهية',
          image: 'assets/img/burger1.jpg',
          price: '7000 دينار',
        ),
        FoodItem(
          name: 'بركر لحم',
          description: 'لحم طازج ومكونات شهية',
          image: 'assets/img/burger.jpeg',
          price: '5000 دينار',
        ),
        FoodItem(
          name: ' بركر لحم البركه ',
          description: 'بركر لحم خاص بمطعم البركه مع صلصات خاصه',
          image: 'assets/img/burger2.jpg',
          price: '8000 دينار',
        ),
      ],
    ),

    FoodCategory(
      title: ' بيتزا ',
      image: 'assets/img/pizza.jpg',
      items: [
        FoodItem(
          name: 'بيتزا جبن',
          description: 'بيتزا بالجبن والمشروم',
          image: 'assets/img/pizza.jpg',
          price: '7000 دينار',
        ),

        FoodItem(
          name: 'بيتزا لحم',
          description: 'بيتزا باللحم ',
          image: 'assets/img/pizza1.jpg',
          price: '10000 دينار',
        ),
        FoodItem(
          name: 'بيتزا دجاج',
          description: 'بيتزا بالدجاج ',
          image: 'assets/img/pizza2.jpg',
          price: '7000 دينار',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const StyledText(' مطعم البركه')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder:
            (context, i) => CategoryCard(
              category: categories[i],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CategoryScreen(category: categories[i]),
                  ),
                );
              },
            ),
      ),
    );
  }
}

// lib/screens/restaurant_list_screen.dart

import 'package:flutter/material.dart';
import '../widgets/food_item_card.dart';
import '../models/food_item.dart';

class RestaurantListScreen extends StatelessWidget {
  final List<FoodItem> foodItems; // Assuming you'll fetch this from an API

  RestaurantListScreen({required this.foodItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surplus Food Listings'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return FoodItemCard(foodItem: foodItems[index]);
        },
      ),
    );
  }
}

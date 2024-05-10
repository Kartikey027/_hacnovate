// lib/widgets/food_item_card.dart

import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;

  FoodItemCard({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(foodItem.name),
        subtitle: Text(foodItem.description),
        trailing: Text('${foodItem.quantity} available'),
        onTap: () {
          // Handle tapping on a food item
        },
      ),
    );
  }
}

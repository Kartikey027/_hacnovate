// lib/models/food_item.dart

class FoodItem {
  final String name;
  final String description;
  final int quantity;
  final DateTime expirationDate;
  final String restaurantId;

  FoodItem({
    required this.name,
    required this.description,
    required this.quantity,
    required this.expirationDate,
    required this.restaurantId,
  });
}

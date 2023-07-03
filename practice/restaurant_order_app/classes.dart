// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class FoodItem {
  String name;
  int price;

  FoodItem({
    required this.name,
    required this.price,
  });
}

class OrderingSystem<T extends FoodItem> {
  List<FoodItem> order = [];

  void addItem(FoodItem food) {
    order.add(food);
  }

  void removeItem(FoodItem food) {
    order.remove(food);
  }

  void showOrderList() {
    for (var element in order) {
      print("Name: ${element.name}");
    }
  }
}

class MainCourse extends FoodItem {
  List<String> ingredients;
  MainCourse({
    required this.ingredients,
    required super.name,
    required super.price,
  });
}

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({
    required this.isSweet,
    required super.name,
    required super.price,
  });
}

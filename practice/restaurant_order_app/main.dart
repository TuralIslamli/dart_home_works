import 'classes.dart';

void main() {
  MainCourse dolma =
      MainCourse(ingredients: ["meat", "leaf"], name: "Dolma", price: 10);
  Dessert iceCream = Dessert(isSweet: true, name: "Ice cream", price: 15);

  OrderingSystem firstOrder = OrderingSystem();
  firstOrder.addItem(dolma);
  firstOrder.addItem(iceCream);
  firstOrder.showOrderList();
  firstOrder.removeItem(iceCream);
  firstOrder.showOrderList();
}

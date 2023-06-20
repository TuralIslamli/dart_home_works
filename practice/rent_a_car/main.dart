import 'classes.dart';

void main() {
  Car firstCar = Car(
      passengerCapacity: 4,
      price: 100,
      brand: "Honda",
      model: "Civic",
      type: "sedan");

  firstCar.rent();
  firstCar.calculateDiscountedPrice(firstCar.price, 10);
  firstCar.returnVehicle();
}

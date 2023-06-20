// ignore_for_file: public_member_api_docs, sort_constructors_first
enum VehicleType { Commercial, Coupe, Hatchback, Sedan, Sport, SUV, Motorcycle }

mixin Discountable {
  void calculateDiscountedPrice(int price, int discount) {
    print(''' Original price: $price \$
Discounted price: ${price * (1 - discount / 100)}\$''');
  }
}

abstract class Rentable {
  rent();
  returnVehicle();
}

class Vehicle implements Rentable {
  String brand;
  String model;
  String type;
  Vehicle({
    required this.brand,
    required this.model,
    required this.type,
  });

  @override
  rent() {
    print("Vehicle rented: $brand $model");
  }

  @override
  returnVehicle() {
    print("Vehicle returned: $brand $model");
  }
}

class Car extends Vehicle with Discountable {
  int passengerCapacity;
  int price;
  Car({
    required this.passengerCapacity,
    required this.price,
    required super.brand,
    required super.model,
    required super.type,
  });
}

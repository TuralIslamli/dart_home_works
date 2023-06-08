class Vehicle {
  String model;
  String color;
  int wheelsCount;

  Vehicle(
      {required this.model, required this.color, required this.wheelsCount});

  void getStart() {
    print("$color $model with $wheelsCount wheels is start");
  }
}

class Car extends Vehicle {
  bool isElectraCar;
  String type;

  Car(
      {required this.isElectraCar,
      required this.type,
      required super.color,
      required super.model,
      required super.wheelsCount});
}

class Byke extends Vehicle {
  int horsePowers;
  Byke(
      {required super.color,
      required super.model,
      required super.wheelsCount,
      required this.horsePowers});
}

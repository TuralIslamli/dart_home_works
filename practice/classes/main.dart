import 'classes.dart';

void main() {
  Car tesla = Car(
      isElectraCar: true,
      type: "sport",
      color: "red",
      model: "Tesla",
      wheelsCount: 4);
  tesla.getStart();

  Byke mercedes =
      Byke(color: "red", model: "mercedes", wheelsCount: 2, horsePowers: 125);
  mercedes.getStart();
}

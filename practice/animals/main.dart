import 'classes.dart';

void main() {
  Mammal lion = Mammal(year: 3, type: "Lion");
  lion.startToRun();
  lion.displayInfo();

  Bird eagle = Bird(wingLength: 2.5, type: "Eagle");
  eagle.startToFly();
  eagle.displayInfo();

  Reptile cobra = Reptile(isPoisonus: true, type: "Cobra");
  cobra.startToCrawl();
  cobra.displayInfo();
}

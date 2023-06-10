class Animal {
  String type;

  Animal({required this.type});
  void displayInfo() {
    print("This is $type");
  }
}

class Mammal extends Animal {
  int year;

  Mammal({required this.year, required super.type});
  void startToRun() {
    print("$type starts to run");
  }
}

class Bird extends Animal {
  double wingLength;

  Bird({required this.wingLength, required super.type});
  void startToFly() {
    print("$type starts to fly");
  }
}

class Reptile extends Animal {
  bool isPoisonus;

  Reptile({required this.isPoisonus, required super.type});
  void startToCrawl() {
    print("$type starts to crawl");
  }
}

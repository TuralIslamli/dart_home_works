import 'dart:io';
import 'dart:math';

main() {
  bool isContunie = true;
  int userPoint = 0;
  int botPoint = 0;
  Map<int, String> choices = {
    1: "Rock",
    2: "Paper",
    3: "Scirrors",
    4: "Finish"
  };
  while (isContunie) {
    print("User: $userPoint - $botPoint : Bot");
    print('Your choise?');
    choices.forEach((key, value) {
      print("$key: $value");
    });
    int? userChoice = int.tryParse(stdin.readLineSync().toString());
    Random random = new Random();
    int bootGenerate = random.nextInt(3) + 1;
    print("User is : ${choices[userChoice]}");
    print("Bot is : ${choices[bootGenerate]}");
    if (userChoice == bootGenerate) {
      userPoint++;
      botPoint++;
    } else if (userChoice! - bootGenerate == 1 ||
        userChoice - bootGenerate == -2) {
      userPoint++;
    } else if (bootGenerate - userChoice == 1 ||
        bootGenerate - userChoice == -2) {
      botPoint++;
    } else if (userChoice == 4) {
      isContunie = false;
    }
  }
}

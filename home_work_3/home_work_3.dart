import 'dart:io';

void main() {
  String? userNumber;
  while (true) {
    stdout.writeln("Rəqəm daxil edin ");
    userNumber = stdin.readLineSync().toString().trim();
    if (num.tryParse(userNumber).runtimeType == int) {
      num newNumber = num.tryParse(userNumber)!;
      for (num i = 1; i <= newNumber; i++) {
        if (newNumber % i == 0) {
          stdout.writeln("$newNumber, $i-ə tam bölünür");
        }
      }
    }
  }
}

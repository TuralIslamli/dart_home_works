import 'dart:io';

void main() {
  var isChecking = true;
  while (isChecking) {
    stdout.write(
        "Enter the number of the task you want to check. \n 1: how long until a hundred years\n 2: Reversed words\n 3: Finish checking   ");
    int? homeWork = int.tryParse(stdin.readLineSync().toString());
    switch (homeWork) {
      case 1:
        stdout.writeln("Enter your Name?  ");
        String? name = stdin.readLineSync();
        stdout.writeln("Enter your age?  ");
        int? age = int.tryParse(stdin.readLineSync().toString());
        stdout.writeln("$name you have 100 years ${100 - age!} years");
        break;
      case 2:
        stdout.writeln("Enter 5 word sentence  ");
        String? sentence = stdin.readLineSync().toString();
        var sentenceList = sentence.split(' ');
        stdout.writeln(sentenceList.length > 4
            ? sentenceList.reversed.join(' ')
            : 'The number of words must be at least 5');
        break;
      case 3:
        isChecking = false;
        break;
      default:
        stdout.writeln("No lesson with this number");
    }
  }
}

import 'dart:io';

class BankAccount {
  String firstName;
  String lastName;
  int balance;

  BankAccount({
    required this.firstName,
    required this.lastName,
    required this.balance,
  });

  void printInfo() {
    print("User: $firstName $lastName \n Balance: $balance");
  }

  void topUp() {
    stdout.writeln("Məbləği əlavə edin");
    int? amount  = int.tryParse(stdin.readLineSync().toString());
    editBalance(amount !);
  }

  void withDraw() {
    stdout.writeln("Məbləği qeyd edin");
    int? amount  = int.tryParse(stdin.readLineSync().toString());
    editBalance(-amount !);
  }

  void editBalance(int amount ) {
    balance += amount ;
  }
}

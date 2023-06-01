import 'bank_account.dart';

void main() {
  BankAccount firstAccount =
      BankAccount(firstName: "Tural", lastName: "Islamli", balance: 1000);
  firstAccount.printInfo();
  firstAccount.topUp();
  firstAccount.printInfo();
  firstAccount.withDraw();
  firstAccount.printInfo();
}

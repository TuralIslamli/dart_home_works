import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    stdout.writeln(
        "Hansı dərəcə şifrə yaratmaq istəyirsiniz? \n 1. zəif \n 2. orta \n 3. güclü");
    int? level = int.tryParse(stdin.readLineSync().toString());
    switch (level) {
      case 1:
        easyPassword();
        break;
      case 2:
        mediumPassword();
        break;
      case 3:
        highPassword();
        break;
      default:
        print("Yanlış seçim");
    }
  }
}

void easyPassword() {
  Random random = new Random();
  int password = random.nextInt(999999) + 100000;
  print('Sizin şifrə $password');
}

void mediumPassword() {
  var r = Random();
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  String password =
      List.generate(12, (index) => _chars[r.nextInt(_chars.length)]).join();
  print('Sizin şifrə $password');
}

void highPassword() {
  String bs64str1 = base64Url.encode('userName'.codeUnits);
  dynamic tempList = bs64str1.split('');
  tempList.shuffle();
  String password = tempList.join('');
  print('Sizin şifrə $password');
}

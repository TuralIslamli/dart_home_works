import 'dart:io';

Map<int, String> loginOrGuest = {1: 'login', 2: 'guest'};
List<Map<String, dynamic>> products = [
  {
    'model': 'Samsung A53',
    'memory': '128gb',
    'ram': '6gb',
    "OS": "Android",
    'price': 830
  },
  {
    'model': 'iPhone 11',
    'memory': '128gb',
    'ram': '4gb',
    'OS': 'IOS',
    'price': 1400
  },
  {
    'model': 'Xiaomi 13',
    'memory': '256gb',
    'ram': '8gb',
    'OS': 'Android',
    'price': 1900
  }
];

Map<String, Map<dynamic, dynamic>> creditMethods = {
  'Birkart': {
    'id': 1,
    'loans': {3: Null, 6: Null, 12: Null, 18: Null},
    'comission': 'none'
  },
  'Tamkart': {
    'id': 2,
    'loans': {3: Null, 6: Null, 12: 25},
    'comission': 'percent'
  },
  'Bolkart': {
    'id': 3,
    'loans': {3: Null, 6: 10},
    'comission': 'value'
  },
};

main() {
  int? userSelect;
  int? selectedModelIndex;
  String? buyOrNo;
  String? splitOrNo;
  String userName = '';
  dynamic password = '';
  Map<String, dynamic> selectedModel;
  String isDelivery;
  String isCash;

  while (!loginOrGuest.values.contains(userSelect)) {
    stdout.writeln("Please select \n1: Login\n2: Continue as guest ");
    userSelect = int.tryParse(stdin.readLineSync().toString());

    if (loginOrGuest[userSelect] == 'login') {
      while (userName.isEmpty || userName.contains(' ')) {
        stdout.writeln("Please enter user name. User name cant be emty ");
        userName = stdin.readLineSync().toString();
      }

      while (password.trim().length == 0) {
        stdout.writeln("Please enter password. Password name cant be emty ");
        password = stdin.readLineSync().toString();
      }
    }

    while (selectedModelIndex == null) {
      stdout.writeln("Please select model ");
      products.asMap().forEach((index, value) {
        stdout.writeln("${index + 1} ${value['model']}");
      });

      selectedModelIndex = (int.tryParse(stdin.readLineSync().toString()));
      products[selectedModelIndex! - 1].forEach((key, value) {
        stdout.writeln("${key}: ${value}");
      });

      stdout.writeln("If you want to buy click 1?");
      buyOrNo = stdin.readLineSync().toString();
      if (buyOrNo != '1') {
        selectedModelIndex = null;
      }
    }
    selectedModel = Map.from(products[selectedModelIndex - 1]);
    stdout.writeln(
        "Do you want to buy with delivery(1) ? or want to buy in the store(2)");
    isDelivery = stdin.readLineSync().toString();
    if (isDelivery == '1') {
      selectedModel['price'] = selectedModel['price'] + 10;
    }
    stdout.writeln("Do you want to buy with card(1) ? or cash(2)");
    isCash = stdin.readLineSync().toString();
    if (isCash == '1') {
      stdout.writeln("If you want to split the payment by months click 1");
      splitOrNo = stdin.readLineSync().toString();
    }
    if (isCash == '2' || splitOrNo != '1') {
      stdout.writeln(
          'Your order ${selectedModel['model']} has been accepted, the amount will be ${selectedModel['price']} AZN');
    } else {
      stdout.writeln('Select bank card which you want to pay');
      creditMethods.forEach((key, value) {
        stdout.writeln("${value['id']}: ${key}");
      });
      int bankCard = int.parse(stdin.readLineSync().toString());
      creditMethods.forEach((key, value) {
        if (value['id'] == bankCard) {
          stdout.writeln(
              "$key has ${Map.from(value["loans"]).keys} loans. \nEnter how many months you want to split");
          int selectedLoans = int.parse(stdin.readLineSync().toString());
          if (value['loans'][selectedLoans] != Null) {
            switch (value['comission']) {
              case 'percent':
                selectedModel['price'] = selectedModel['price'] +
                    (selectedModel['price'] /
                        100 *
                        value['loans'][selectedLoans]);
                break;
              case 'value':
                selectedModel['price'] =
                    selectedModel['price'] + value['loans'][selectedLoans];
                break;
              default:
            }
          }
          stdout.writeln(
              "${selectedModel['model']} new price ${selectedModel['price']} and with $selectedLoans loans will be ${selectedModel['price'] / selectedLoans} per month");
        }
      });
    }
  }
}

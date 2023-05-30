import 'dart:math';

void main() {
  var r = Random();
  List<int> numbers = List.generate(10, (index) => r.nextInt(10));
  print(numbers);
  print(maxNumber(numbers));
  print(minNumber(numbers));
  print(numbersSum(numbers));
  print(avarage(numbers));
}

int maxNumber(List<int> list) => list.reduce(max);
int minNumber(List<int> list) => list.reduce(min);
int numbersSum(List<int> list) =>
    list.reduce((value, element) => value + element);
double avarage(List<int> list) => numbersSum(list) / list.length;

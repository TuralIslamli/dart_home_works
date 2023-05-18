void main() {
  Map<String, List<int>> customers = {
    'John Snow': [500, 200],
    'Elliot Anderson': [150, 900],
  };
  customers.forEach((key, value) {
    List<int> temp = value.map((e) => e > 200 ? e + 10 : e).toList();
    customers[key] = temp;
  });
  print(customers);
}

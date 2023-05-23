void main() {
  List<String> list = ['Asus', 'asus', 'msi', 'Msi'];
  Map<String, int> products = productsGenerator(list);
  print(products);
}

Map<String, int> productsGenerator(List<String> list) {
  Map<String, int> products = {};
  for (String element in list) {
    String productName = element.toUpperCase();
    products[productName] = (products[productName] ?? 0) + 1;
  }
  return products;
}
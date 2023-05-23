void main() {
  List<String> list = ['Asus', 'asus', 'msi', 'Msi'];
  Map<String, int> products = productsGenerator(list);
  print(products);
}

Map<String, int> productsGenerator(List<String> list) {
  Map<String, int> products = {};
  for (var element in list) {
    String productName = element.toUpperCase();
    products.keys.contains(productName)
        ? products[productName] = products[productName]! + 1
        : products[productName] = 1;
  }
  return products;
}

import 'book.dart';

class Library {
  List<Book> bookList = [
    Book(title: "First book", author: "First author", publicationYear: 2000),
    Book(title: "Second book", author: "Second author", publicationYear: 2020)
  ];

  void addBook(Book newBook) {
    bookList.add(newBook);
  }

  void searchByTitle(String searchText) {
    List<Book> searchResult = bookList
        .where((element) =>
            element.title.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    searchResult.length != 0
        ? searchResult.forEach((element) {
            displayBook(element);
          })
        : print('Not found');
  }

  void displayBooks() {
    for (var element in bookList) {
      displayBook(element);
    }
  }

  void displayBook(Book book) {
    print(
        "Title: ${book.title}. Author: ${book.author}. Year: ${book.publicationYear}");
  }
}

import 'dart:math';

import 'book.dart';
import 'price.dart';
import 'year.dart';

class Library {
  List<Book> bookList = [
    Book(
        title: "First book",
        author: "First author",
        publicationYear: 2000,
        price: 10,
        genre: 1),
    Book(
        title: "Second book",
        author: "Second author",
        publicationYear: 2020,
        price: 20,
        genre: 2)
  ];

  void addBook(Book newBook) {
    Book.genres.forEach((key, value) {
      print("In genres enter genre id \n $value id: $key");
    });
    bookList.add(newBook);
  }

  void search(
      {String searchTitle = '',
      String searchAuthor = '',
      int? genreId,
      Year? year,
      Price? price}) {
    year ??= Year(
        from:
            year?.from ?? bookList.map((e) => e.publicationYear).reduce((min)),
        to: year?.from ?? bookList.map((e) => e.publicationYear).reduce((max)));

    List<Book> searchResult = bookList
        .where((element) =>
            element.title.toLowerCase().contains(searchTitle.toLowerCase()) &&
            element.author.toLowerCase().contains(searchAuthor.toLowerCase()) &&
            element.publicationYear >=
                (year?.from ??
                    bookList.map((e) => e.publicationYear).reduce((min))) &&
            element.publicationYear <=
                (year?.to ??
                    bookList.map((e) => e.publicationYear).reduce((max))) &&
            element.price >=
                (price?.from ?? bookList.map((e) => e.price).reduce((min))) &&
            element.price <=
                (price?.to ?? bookList.map((e) => e.price).reduce((max))))
        .toList();

    if (genreId != null) {
      searchResult =
          searchResult.where((element) => element.genre == genreId).toList();
    }

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
        "Title: ${book.title}. Author: ${book.author}. Year: ${book.publicationYear}. Genre: ${Book.genres[book.genre]}. Price: ${book.price}");
  }
}

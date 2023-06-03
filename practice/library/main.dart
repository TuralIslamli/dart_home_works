import 'book.dart';
import 'library.dart';
import 'price.dart';
import 'year.dart';

void main() {
  Library library = Library();
  library.displayBooks();
  library.addBook(Book(
      title: "New book",
      author: "New author",
      publicationYear: 2022,
      price: 30,
      genre: 3));
  print("-" * 20);
  library.displayBooks();
  print("-" * 20);
  library.search(year: Year(from: 2010, to: 2030), price: Price(from: null, to: 25), genreId: 2);
}

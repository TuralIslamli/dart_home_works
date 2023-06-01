import 'book.dart';
import 'library.dart';

void main() {
  Library library = Library();
  library.displayBooks();
  library.addBook(
      Book(title: "New book", author: "New author", publicationYear: 2022));
  print("-" * 20);
  library.displayBooks();
  print("-" * 20);
  library.searchByTitle("s");
}

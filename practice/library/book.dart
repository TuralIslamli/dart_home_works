class Book {
  String title;
  String author;
  int publicationYear;
  int price;
  int genre;
  static Map<int, String> genres = {
    1: "Detective",
    2: "Thriller",
    3: "Historical"
  };

  Book(
      {required this.title,
      required this.author,
      required this.publicationYear,
      required this.genre,
      required this.price});
}

class Book {
  String bookName = "";
  String bookAuthor = "";
  String bookDetail = "";
  String smallImage = "";
  String largeImage = "";

  // Constructor
  Book(
    this.bookName,
    this.bookAuthor,
    this.bookDetail,
    this.smallImage,
    this.largeImage,
  );

  //toString
  @override
  String toString() {
    return 'Book{bookName: $bookName, bookAuthor: $bookAuthor}';
  }
}

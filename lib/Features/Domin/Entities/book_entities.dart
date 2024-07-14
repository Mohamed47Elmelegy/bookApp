class BookEntities {
  final String bookId;
  final String? image;
  final String title;
  final String? authourName;
  final num? price;
  final num? rating;

  BookEntities(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.authourName,
      required this.price,
      required this.rating});
}

import 'package:akatabo/akatabo_exporter.dart';

class AkataBook {
  // id
  final String bookId;

  // title
  final String title;

  // author
  final String author;

  // cover image
  final String coverImage;

  // description
  final String description;

  // cover description
  final String coverDescription;

  // category
  final String category;

  // price
  final double price;

  // rating
  final double rating;

  // book url (for pdf)
  final String bookUrl;

  AkataBook({
    required this.bookUrl,
    required this.title,
    required this.author,
    required this.coverImage,
    required this.description,
    required this.coverDescription,
    required this.category,
    required this.price,
    required this.rating,
  }) : bookId = const Uuid().v4();
}

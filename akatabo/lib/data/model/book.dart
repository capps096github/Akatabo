import '../../akatabo_exporter.dart';

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

  /// id of the category where this book belongs
  final String categoryId;

  // price
  final double price;

  // rating
  final double rating;

  // book url (for pdf)
  final String bookUrl;

  // other details
  // publisher number
  final String publisherNo;

  // publisher name
  final String publisher;

  // publication date
  final DateTime publishedOn;

  // language
  final String bookLanguage;

  // page lengthe
  final int numOfPages;

// book size
// TODO create a size converter that takes in KBs and coverts them to MBs
  final double bookSize;

  AkataBook({
    required this.bookUrl,
    required this.title,
    required this.author,
    required this.coverImage,
    required this.description,
    required this.coverDescription,
    required this.categoryId,
    required this.price,
    required this.rating,
    required this.publisherNo,
    required this.publisher,
    required this.publishedOn,
    required this.bookLanguage,
    required this.numOfPages,
    required this.bookSize,
  }) : bookId = const Uuid().v4();
}

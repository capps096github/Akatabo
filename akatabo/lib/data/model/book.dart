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
    required this.bookId,
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
  });

  Map<String, dynamic> toFirestore() {
    return {
      'bookId': const Uuid().v4(),
      'title': title,
      'author': author,
      'coverImage': coverImage,
      'description': description,
      'coverDescription': coverDescription,
      'categoryId': categoryId,
      'price': price,
      'rating': rating,
      'bookUrl': bookUrl,
      'publisherNo': publisherNo,
      'publisher': publisher,
      'publishedOn': publishedOn.millisecondsSinceEpoch,
      'bookLanguage': bookLanguage,
      'numOfPages': numOfPages,
      'bookSize': bookSize,
    };
  }

  factory AkataBook.fromFirestore(Map<String, dynamic> map) {
    return AkataBook(
      bookId: map['bookId'] ?? '',
      title: map['title'] ?? '',
      author: map['author'] ?? '',
      coverImage: map['coverImage'] ?? '',
      description: map['description'] ?? '',
      coverDescription: map['coverDescription'] ?? '',
      categoryId: map['categoryId'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      rating: map['rating']?.toDouble() ?? 0.0,
      bookUrl: map['bookUrl'] ?? '',
      publisherNo: map['publisherNo'] ?? '',
      publisher: map['publisher'] ?? '',
      publishedOn: DateTime.fromMillisecondsSinceEpoch(map['publishedOn']),
      bookLanguage: map['bookLanguage'] ?? '',
      numOfPages: map['numOfPages']?.toInt() ?? 0,
      bookSize: map['bookSize']?.toDouble() ?? 0.0,
    );
  }
}

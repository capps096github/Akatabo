import 'package:uuid/uuid.dart';

class BookCategory {
  // title
  final String title;

  final String id;

  // image
  final String image;

  // book ids strings
  final List<String> bookIds;

  // colors int
  final int colorCode;

  BookCategory({
    required this.title,
    required this.image,
    required this.colorCode,
    required this.bookIds,
  }) : id = const Uuid().v4();
}

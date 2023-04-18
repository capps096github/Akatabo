import '../../akatabo_exporter.dart';

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

  // gradient colors
  final List<Color> gradientColors;

  BookCategory({
    required this.title,
    required this.image,
    required this.colorCode,
    required this.bookIds,
    required this.gradientColors,
  }) : id = const Uuid().v4();
}

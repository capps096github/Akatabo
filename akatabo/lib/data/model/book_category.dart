class BookCategory {
  // title
  final String title;

  // id
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
  }) : id = title.toLowerCase().replaceAll(' ', '_');
}

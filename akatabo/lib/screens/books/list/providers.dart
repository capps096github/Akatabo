import '../../../akatabo_exporter.dart';

/// book category provider takes in an id as a parameter
final bookCategoryProvider = Provider.family<BookCategory, String>(
  (ref, categoryId) {
    // get the list of book categories and select one that matches the id
    final bookCategory = bookCategories
        .firstWhere((bookCategory) => bookCategory.id == categoryId);

    //
    return bookCategory;
  },
);

/// for use in the book list screen
/// this provider takes in a category id as a parameter and returns a list of books that belong to that category by matching the category id
final booksListProvider =
    Provider.family<List<AkataBook>, BookCategory>((ref, bookCategory) {
  // get the list of books whose category id matches the id of the book category
  final booksList = akataboBooks
      .where((book) => (book.categoryId == bookCategory.id))
      .toList(growable: false);

  return booksList;
});

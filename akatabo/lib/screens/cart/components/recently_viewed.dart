import '../../../akatabo_exporter.dart';

class RecentlyViewedBooks extends StatelessWidget {
  const RecentlyViewedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO shud have a checker incase user has no books
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // book
          final book = akataboBooks[index];

          return BookTile(akataBook: book);
        },
        childCount: akataboBooks.length,
      ),
    );
  }
}

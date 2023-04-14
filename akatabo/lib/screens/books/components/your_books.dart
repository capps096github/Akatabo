import '../../../akatabo_exporter.dart';

class YourBooks extends StatelessWidget {
  const YourBooks({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO shud have a checker incase user has no books
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // book
          final book = akataboBooks[index];

          return BookTile(
            akataBook: book,
            isMyBook: true,
          );
        },
        childCount: akataboBooks.length,
      ),
    );
  }
}

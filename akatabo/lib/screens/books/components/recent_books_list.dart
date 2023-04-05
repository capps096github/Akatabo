import '../../../akatabo_exporter.dart';
import 'recent_book.dart';

class RecentBooksList extends StatelessWidget {
  const RecentBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: spacing8),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              akataboBooks.length,
              (index) {
                // book
                final book = akataboBooks[index];

                return RecentBook(book: book);
              },
            ),
          ),
        ),
      ),
    );
  }
}

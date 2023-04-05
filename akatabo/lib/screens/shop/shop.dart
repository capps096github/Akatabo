import '../../akatabo_exporter.dart';
import '../books/components/book_card.dart';

class AkataboShop extends StatelessWidget {
  const AkataboShop({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO use Scattered grid here with pinterest style
    return Wrap(
      spacing: spacing8,
      runSpacing: spacing8,
      children: List.generate(
        akataboBooks.length,
        (index) => Card(
          child: SizedBox(
            width: recentBooksWidth,
            child: BookCard(
              book: akataboBooks[index],
            ),
          ),
        ),
      ),
    );
  }
}

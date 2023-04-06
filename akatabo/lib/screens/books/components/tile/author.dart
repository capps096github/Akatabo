import '../../../../akatabo_exporter.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Text(
      akataBook.author,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: const TextStyle(
        color: akataboColor,
        fontSize: fontSize10,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

import '../../../akatabo_exporter.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.book,
  });

  final AkataBook book;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage(
          imageUrl: book.coverImage,
          borderRadius: borderRadius4,
          fit: BoxFit.fill,
          width: double.infinity,
          height: recentBooksCoverHeight,
        ),
        // title
        const VerticalSpace(of: spacing4),
        Text(
          book.title,
          style: const TextStyle(
            color: akataboColor,
            fontSize: fontSize12,
            fontWeight: FontWeight.w900,
          ),
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
